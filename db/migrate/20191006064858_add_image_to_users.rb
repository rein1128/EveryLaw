class AddImageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :image, :string
    add_column :users, :deletion_flag, :integer, default: 0
    add_column :users, :total_point, :integer, default:0
  end
end
