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

  form do |f|
    f.inputs "Questions" do
      f.input :user_id
      f.input :question_id
      f.input :answer_content
    end
    f.actions
  end
  
end
