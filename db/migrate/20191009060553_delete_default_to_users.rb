class DeleteDefaultToUsers < ActiveRecord::Migration[5.2]
  def change
  	change_column_default :users, :image, nil
  end
end
