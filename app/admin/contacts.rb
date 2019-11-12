ActiveAdmin.register Contact do

  permit_params :address, :title, :body

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :user_id, :title, :body
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :title, :body]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end


  index do
     selectable_column
     id_column
     column :address
     column :title
     column :created_at
     column :updated_at
     actions
  end

  form do |f|
    f.inputs "Contacts" do
      f.input :address
      f.input :title
      f.input :body
    end
    f.actions
  end

  show do |b|
    attributes_table do
      row :id
      row :address
      row :title
      row :body
    end
  end
  
end
