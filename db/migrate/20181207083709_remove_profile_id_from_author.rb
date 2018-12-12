class RemoveProfileIdFromAuthor < ActiveRecord::Migration[5.2]
  def change
    remove_column :authors, :profile_id, :integer
  end
end
