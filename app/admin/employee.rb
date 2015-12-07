ActiveAdmin.register Employee do
    permit_params :email, :password, :password_confirmation, :name, :first_name, :mobile, :picture

    controller do
      def update
        if params[:employee][:password].blank? && params[:employee][:password_confirmation].blank?
          params[:employee].delete("password")
          params[:employee].delete("password_confirmation")
        end
        super
      end
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

    show do
      # ad all attributes
      attributes_table do
        # add picture
        row :picture do
          image_tag employee.picture.url
        end
        (Employee.attribute_names).each do |c|
          row c.to_sym
        end
      end
      active_admin_comments
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
