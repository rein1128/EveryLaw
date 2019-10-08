class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :user_id, null: false, default: 0
      t.integer :question_id, null: false, default: 0
      t.text :answer_content

      t.timestamps
    end
  end
end
