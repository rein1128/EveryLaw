class ChangeColumnDefoultUser < ActiveRecord::Migration[5.2]
  def up
  	change_column_default :users, :email, nil
  	change_column_default :questions, :user_id, nil
  	change_column_default :questions, :title, nil
  	change_column_default :points, :user_id, nil
  	change_column_default :points, :answer_id, nil
  	change_column_default :points, :point, nil
  	change_column_default :answers, :user_id, nil
  	change_column_default :answers, :question_id, nil
  end

  def down
  	change_column_default :users, :email, ""
  	change_column_default :questions, :user_id, 0
  	change_column_default :questions, :title, "0"
  	change_column_default :points, :user_id, 0
  	change_column_default :points, :answer_id, 0
  	change_column_default :points, :point, 0
  	change_column_default :answers, :user_id, 0
  	change_column_default :answers, :question_id, 0
  end
end
