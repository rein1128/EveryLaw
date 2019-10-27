ActiveAdmin.register Answer do

  permit_params :user_id, :question_id, :answer_content

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :user_id, :question_id, :answer_content
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :question_id, :answer_content]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end


  index do
     selectable_column
     id_column
     column :user_id
     column :question_id
     column :user_name do |answer|
        raw(User.with_deleted.find_by(id: answer.user_id).user_name)
    end
     column :created_at
     column :updated_at
     actions
  end

  form do |f|
    f.inputs "Questions" do
      f.input :user_id
      f.input :question_id
      f.input :answer_content
    end
    f.actions
  end

  show do |b|
    attributes_table do
      row :id
      row :question_id
      row :user_id
      row :user_name do |answer|
        raw(User.with_deleted.find_by(id: answer.user_id).user_name)
      end
      row :answer_content
    end
  end
  
end
