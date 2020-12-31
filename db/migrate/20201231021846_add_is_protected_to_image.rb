class AddIsProtectedToImage < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :is_protected, :boolean
  end
end
