class CreateCustomers < ActiveRecord::Migration
  def change
    drop_table :customers if ActiveRecord::Base.connection.table_exists? 'customers'
    create_table :customers do |t|
      t.string :name
      t.string :first_name
      t.string :mobile
      t.string :picture

      t.timestamps null: false
    end
  end
end
