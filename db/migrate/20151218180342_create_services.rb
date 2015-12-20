class CreateServices < ActiveRecord::Migration
  def change
    create_table :regions_services do |t|
      t.belongs_to :region, index: true
      t.belongs_to :service, index: true
    end
  end
end
