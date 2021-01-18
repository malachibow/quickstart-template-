class CreateGroupPermissions < ActiveRecord::Migration[6.0]
  def change
    create_table :group_permissions do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :admin

      t.timestamps
    end
  end
end
