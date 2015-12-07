ActiveAdmin.register Country do

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
  permit_params :name, :opening_date


  index do
    selectable_column
    id_column
    column :name
    column :opening_date
    actions
  end

  filter :name
  filter :opening_date

  form do |f|
    f.inputs "Country Details" do
      f.input :name, as: :country
      f.input :opening_date
    end
    f.actions
  end

end
