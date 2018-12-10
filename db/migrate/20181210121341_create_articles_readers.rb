class CreateArticlesReaders < ActiveRecord::Migration[5.2]
  def change
    create_table :articles_readers do |t|
      t.integer :article_id
      t.integer :reader_id

      t.timestamps
    end
  end
end
