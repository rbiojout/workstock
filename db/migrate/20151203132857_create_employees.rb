class CreateEmployees < ActiveRecord::Migration
  def change
    drop_table :employees if ActiveRecord::Base.connection.table_exists? 'employees'
    create_table :employees do |t|
      t.string :name
      t.string :first_name
      t.date :entry_date
      t.string :mobile
      t.string :picture
      t.string :role

      t.timestamps null: false
    end
  end
end
