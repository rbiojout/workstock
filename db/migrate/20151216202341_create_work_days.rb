class CreateWorkDays < ActiveRecord::Migration
  def change
    create_table :work_days do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
