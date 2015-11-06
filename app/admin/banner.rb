ActiveAdmin.register Banner do


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
  permit_params :link, :number,
    image_attributes: [:id, :desc, :photo, :_destroy]

  action_item :new, only: :show do
    link_to '新增首页轮播图', new_admin_banner_path
  end

  index do
    column :id
    column :image do |banner|
      link_to(image_tag(banner.image.photo.url(:mini)), banner.image.photo.url) if banner.image
    end
    column :number
    column :link
    column :created_at
    column :updated_at

    actions
  end

  form :html => {:multipart => true} do |f|
    f.inputs do 
      f.fields_for :image, :for => [:image, f.object.image || f.object.build_image] do |cf|
        image = cf.object
        cf.input :photo, as: :file, label: "轮播图片", hint: (image.photo.blank?) \
          ? cf.template.content_tag(:span, "还未选择图片文件")
          : cf.template.link_to(image_tag(image.photo.url(:medium)), image.photo.url, target: "_blank")
      end
      f.input :number
      f.input :link
    end

    f.actions
  end

  show do |banner|
    attributes_table do
      row :id
      row :link
      row :number
      row :image do
        if banner.image
          link_to(image_tag(banner.image.photo.url(:medium)), banner.image.photo.url, target: "_blank")
        end
      end
    end
  end

end
