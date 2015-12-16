class LinkCustomersToWorkGrids < ActiveRecord::Migration
  def change
    create_table :customers_work_grids do |t|
      t.belongs_to :customer, index: true
      t.belongs_to :work_grid, index: true
    end
  end
end
