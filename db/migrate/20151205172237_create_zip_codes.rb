class CreateZipCodes < ActiveRecord::Migration
  def change
    create_table :zip_codes do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.belongs_to :region, index: true

      t.timestamps null: false
    end
  end
end
