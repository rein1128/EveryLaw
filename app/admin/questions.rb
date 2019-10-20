ActiveAdmin.register Question do

  permit_params :user_id, :title, :question_content

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :user_id, :title, :question_content, :false, :deletion_flag
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :title, :question_content, :false, :deletion_flag]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
     selectable_column
     id_column
     column :user_id
     column :user_name do |question|
        raw(User.with_deleted.find_by(id: question.user_id).user_name)
    end
     column :title
     column :created_at
     column :updated_at
     actions
  end


  form do |f|
    f.inputs "Questions" do
      f.input :user_id
      f.input :title
      f.input :question_content
    end
    f.actions
  end
  
end
