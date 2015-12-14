class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :view_count
      t.integer :reply_count

      t.timestamps null: false
    end
  end
end
