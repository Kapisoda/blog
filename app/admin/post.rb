ActiveAdmin.register Post do

  permit_params :title, :body, :user_id, :category_id
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

  index do
    column :id
    column :title, :sortable => :title
    column :category, :sortable => :category
    column :created_at, :sortable => :created_at
    actions
  end



  form do |f|
    f.inputs "Details" do
    f.input :title, :label => "Title"
    f.input :body, :label => "Body"
    f.input :user, :label => "User"
    f.input :category, :label => "Category"
    f.actions
    end
  end


end
