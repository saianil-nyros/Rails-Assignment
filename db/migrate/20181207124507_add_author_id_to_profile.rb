class AddAuthorIdToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :author_id, :integer
  end
end
