class RemovePhoneFromAuthor < ActiveRecord::Migration[5.2]
  def change
    remove_column :authors, :phone, :integer
  end
end
