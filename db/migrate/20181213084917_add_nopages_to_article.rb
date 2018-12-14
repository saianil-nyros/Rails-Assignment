class AddNopagesToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :nopages, :integer
  end
end
