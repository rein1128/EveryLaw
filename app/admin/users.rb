ActiveAdmin.register User do
    active_admin_paranoia

  permit_params :user_name, :email, :password, :image

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :user_name, :image, :deletion_flag, :total_point, :deleted_at
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :user_name, :image, :deletion_flag, :total_point, :deleted_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
     selectable_column
     id_column
     column :user_name
     column :email
     column :created_at
     column :updated_at
     actions
  end


  form do |f|
    f.inputs "Users" do
      f.input :email
      f.input :user_name
      f.input :password
      f.input :image, :as => :file
    end
    f.actions
  end

  show do |b|
    attributes_table do
      row :email
      row :user_name
      row :id
      row :image do |cw|
        unless cw.image.file.nil?
          image_tag(user.image.url)
        end
      end
    end
  end
end
