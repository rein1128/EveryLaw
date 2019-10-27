ActiveAdmin.register Point do

  permit_params :user_id, :answer_id, :point, :point_comment

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :user_id, :answer_id, :point
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :answer_id, :point]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end



  index do
     selectable_column
     id_column
     column :user_id
     column :answer_id
     column :user_name do |point|
      raw(User.with_deleted.find_by(id: point.user_id).user_name)
    end
     column :point
     column :created_at
     column :updated_at
     actions
  end




  form do |f|
    f.inputs "Points" do
      f.input :answer_id
      f.input :user_id
      f.input :point
      f.input :point_comment
    end
    f.actions
  end

  show do |b|
    attributes_table do
      row :id
      row :answer_id
      row :user_id
      row :user_name do |point|
        raw(User.with_deleted.find_by(id: point.user_id).user_name)
      end
      row :point
      row :point_comment
    end
  end
  
end
