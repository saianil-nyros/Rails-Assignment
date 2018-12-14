class AddPagesToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :article, :integer
  end
end
