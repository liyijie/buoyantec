ActiveAdmin.register Report do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  permit_params :title, :content, :category, :source, :view_count,
    image_attributes: [:id, :desc, :photo, :_destroy]

  action_item :new, only: :show do
    link_to '新建新闻', new_admin_report_path
  end

  index do
    column :title
    column :image do |report|
      link_to(image_tag(report.image.photo.url(:mini)), report.image.photo.url) if report.image
    end
    column :category do |report|
      Report::ReportCategory[report.category.to_sym] rescue ''
    end
    column :source 
    column :view_count
    column :created_at

    actions
  end

  form :html => {:multipart => true} do |f|
    f.inputs do 
      f.input :title
      f.fields_for :image, :for => [:image, f.object.image || f.object.build_image] do |cf|
        image = cf.object
        cf.input :photo, as: :file, label: "新闻主图", hint: (image.photo.blank?) \
          ? cf.template.content_tag(:span, "还未选择图片文件")
          : cf.template.link_to(image_tag(image.photo.url(:medium)), image.photo.url, target: "_blank")
      end
      f.input :category, as: :radio, collection: Report::ReportCategory.invert
      f.input :source
    end

    f.input :content, as: :ckeditor
    
    f.actions
  end

  show do |report|
    attributes_table do
      row :title
      row  :category do |report|
        Report::ReportCategory[report.category.to_sym] rescue ''
      end
      row :source 
      row :view_count
      row :content do
        report.content.html_safe if report.content
      end
      row :image do
        if report.image
          link_to(image_tag(report.image.photo.url(:medium)), report.image.photo.url, target: "_blank")
        end
      end

    end
  end

  filter :title
  filter :source
  filter :content
  filter :category, as: :select, collection: [['公司新闻', 1], ['行业动态', 2], ['最新活动', 3]]
  filter :view_count
  filter :created_at



end
