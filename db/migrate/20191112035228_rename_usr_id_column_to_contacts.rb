class RenameUsrIdColumnToContacts < ActiveRecord::Migration[5.2]
  def change
  	rename_column :contacts, :usr_id, :user_id
  end
end
