class DeleteColumnFromPosts < ActiveRecord::Migration[5.2]
  def up 
    add_column :posts, :body, :text
  end
  def down
    remove_column :posts, :comments, :string
  end
end
