class RemoveFalseFormQuestions < ActiveRecord::Migration[5.2]
  def change
  	remove_column :questions, :false, :integer
  end
end
