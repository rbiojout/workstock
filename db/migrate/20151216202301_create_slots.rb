class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.datetime :start_time
      t.integer :duration
      t.boolean :prefered

      t.timestamps null: false
    end
  end
end
