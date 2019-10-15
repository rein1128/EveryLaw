class AddDefaultToUsers < ActiveRecord::Migration[5.2]
  def change
  	change_column_default :users, :image, 'no_image.jpg'
  end
end
