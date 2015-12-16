class CreateWorkGrids < ActiveRecord::Migration
  def change
    create_table :work_grids do |t|
      t.references :work_day, index: true, foreign_key: true
      t.references :slot, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
