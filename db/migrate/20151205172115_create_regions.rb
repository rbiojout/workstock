class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name
      t.date :opening_date
      t.belongs_to :country, index: true

      t.timestamps null: false
    end
  end
end
