class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :category_id
      t.integer :user_id
      t.text :body
      t.string :title

      t.timestamps
    end
  end
end
