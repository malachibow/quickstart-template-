class AddGroupToGroupPermissions < ActiveRecord::Migration[6.0]
  def change
    add_reference :group_permissions, :group, null: false, foreign_key: true
  end
end
