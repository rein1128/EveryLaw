class RemoveTotalPointFromUsers < ActiveRecord::Migration[5.2]
  def up
    remove_column :users, :total_point
  end

  def down
  	remove_column :users, :total_point, :integer
  end
end
