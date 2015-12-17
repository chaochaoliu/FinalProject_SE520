class FixRoleColumnName < ActiveRecord::Migration
   def self.up
    rename_column :roles, :admin, :name

    remove_column :roles, :manager
    remove_column :roles, :regular_user
  end

  def self.down
    rename_column :roles, :name, :admin

    add_column :roles, :manager, :string
    add_column :roles, :regular_user, :string
  end
end
