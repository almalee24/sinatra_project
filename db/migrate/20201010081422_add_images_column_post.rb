class AddImagesColumnPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :images, :string
  end
end
