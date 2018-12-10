class CreateBooksReaders < ActiveRecord::Migration[5.2]
  def change
    create_table :books_readers do |t|
      t.integer :book_id
      t.integer :reader_id

      t.timestamps
    end
  end
end
