class CreateRoles < ActiveRecord::Migration
  def up
    create_table :roles do |t|
      t.string :admin
      t.string :manager
      t.string :regular_user

      t.timestamps null: false
    end
  end

  def down
    detroy_table :roles
  end
end
