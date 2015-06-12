ActiveAdmin.register Recruit do


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

   permit_params :position, :address, :quantity, :content

   index do
    column :position
    column :address
    column :quantity
    column :created_at
    actions
  end
# 查询
  filter :position
  filter :address
  filter :quantity
  filter :content

  form do |f|
    f.inputs  do
      f.input :position
      f.input :address
      f.input :quantity
    end
      f.input :content, as: :ckeditor
    f.actions
  end


end
