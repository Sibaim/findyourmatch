class SetAdminDefult < ActiveRecord::Migration[5.0]
  def up
    change_column_default :users, :is_admin, false
  end

  def down
    rename_column :users, :first_name, :string
    remove_column :users, :last_name, :string
  end
end
