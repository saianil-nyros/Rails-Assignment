class RemoveArticleFromArticle < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :article, :integer
  end
end
