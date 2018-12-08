class CreateJoinTableArticleAuthor < ActiveRecord::Migration[5.2]
  def change
    create_join_table :articles, :authors do |t|
     t.index [:article_id, :author_id]
       t.index [:author_id, :article_id]
    end
  end
end
