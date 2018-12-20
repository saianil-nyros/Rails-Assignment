class AddFile < ActiveRecord::Migration[5.2]
  def change
  	add_attachment :articles, :file
  end
end
