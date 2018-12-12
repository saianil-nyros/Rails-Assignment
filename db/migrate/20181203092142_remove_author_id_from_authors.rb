class RemoveAuthorIdFromAuthors < ActiveRecord::Migration[5.2]
  def change
    remove_column :authors, :author_id, :integer
  end
end
