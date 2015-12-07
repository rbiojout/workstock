ActiveAdmin.register Customer do

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
  permit_params :email, :password, :password_confirmation, :name, :first_name, :mobile, :picture

  # preventing problem with empty password
  controller do
    def update
      if params[:customer][:password].blank? && params[:customer][:password_confirmation].blank?
        params[:customer].delete("password")
        params[:customer].delete("password_confirmation")
      end
      super
    end
  end

  show do
    # ad all attributes
    attributes_table do
      # add picture
      row :picture do
        image_tag customer.picture.url
      end
      (Customer.attribute_names).each do |c|
        row c.to_sym
      end
    end
    active_admin_comments
  end

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details", :multipart => true do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :name
      f.input :first_name
      f.input :mobile
      f.input :picture, :image_preview => true
    end
    f.actions
  end

end
