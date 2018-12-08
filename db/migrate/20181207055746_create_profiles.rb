class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
    	t.string :name
    	t.integer :phone
    	t.string :email

      t.timestamps
    end
  end
end
