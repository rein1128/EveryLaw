class AddPointCommentsToPoints < ActiveRecord::Migration[5.2]
  def change
    add_column :points, :point_comment, :text
  end
end
