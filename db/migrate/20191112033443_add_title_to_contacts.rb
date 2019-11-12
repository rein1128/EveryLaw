class AddTitleToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :usr_id, :integer
    add_column :contacts, :title, :string
    add_column :contacts, :body, :string
  end
end
