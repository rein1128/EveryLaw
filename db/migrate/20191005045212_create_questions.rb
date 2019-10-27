class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :user_id, null: false
      t.string :title, null: false, default: ""
      t.text :question_content, false, default: ""
      t.integer :deletion_flag, false, default: 0

      t.timestamps
    end
  end
end
