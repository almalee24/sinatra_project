class PostsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :comments
      t.integer :user_id
      t.timestamps
    end
  end
end
