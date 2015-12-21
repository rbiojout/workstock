class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
    end
    create_table :regions_services do |t|
      t.belongs_to :region, index: true
      t.belongs_to :service, index: true
    end
  end
end
