class RemoveDeletionFlagFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :deletion_flag, :integer
  end
end
