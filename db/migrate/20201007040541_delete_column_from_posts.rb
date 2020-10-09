class DeleteColumnFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :comments, :string
    add_column :posts, :body, :text
  end
end
