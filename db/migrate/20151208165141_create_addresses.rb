class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :full_address
      t.string :address1
      t.string :address2
      t.string :city
      t.references :zip_code, index: true, foreign_key: true
      t.float :latitude
      t.float :longitude
      t.references :user, index: true, polymorphic: true

      t.timestamps null: false
    end
  end
end
