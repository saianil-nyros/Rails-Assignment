class AddProfileIdToAuthor < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :profile_id, :integer
  end
end
