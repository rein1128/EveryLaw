class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.integer :user_id, null: false, default: 0
      t.integer :answer_id, null: false, default: 0
      t.integer :point, null: false, default: 0
      t.text :comment
      t.timestamps
    end
  end
end
