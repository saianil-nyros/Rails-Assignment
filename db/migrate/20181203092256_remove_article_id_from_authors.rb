class RemoveArticleIdFromAuthors < ActiveRecord::Migration[5.2]
  def change
    remove_column :authors, :article_id, :integer
  end
end
