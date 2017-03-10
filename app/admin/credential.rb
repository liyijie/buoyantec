ActiveAdmin.register Credential do


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
  permit_params :name, :cer_number, :score, :cer_type, :start_date,
    :end_date, :identity_number

  action_item :new, only: :show do
    link_to '新建DTCE证书', new_admin_credential_path
  end

  index do
    column :name
    column :cer_number 
    column :score
    column :cer_type
    column :start_date 
    column :end_date
    column :identity_number

    actions
  end

  form :html => {:multipart => true} do |f|
    f.inputs do 
      f.input :name
      f.input :cer_number
      f.input :score
      f.input :cer_type
      f.input :start_date
      f.input :end_date
      f.input :identity_number
    end
    f.actions
  end

  show do |report|
    attributes_table do
      row :name
      row :cer_number
      row :score
      row :cer_type
      row :start_date
      row :end_date
      row :identity_number
    end
  end

  filter :name
  filter :cer_number
  filter :score
  filter :cer_type
  filter :start_date
  filter :end_date
  filter :identity_number
end
