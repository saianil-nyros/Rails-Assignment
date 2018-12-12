class AddAuthorIdToAuthor < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :author_id, :integer
  end
end
