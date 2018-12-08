class AddArticleIdToAuthors < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :article_id, :integer
  end
end
