class RemoveDeletionFlagFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :deletion_flag, :integer
  end
end
