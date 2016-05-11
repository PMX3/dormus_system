class CreateLaundryOrderItems < ActiveRecord::Migration
  def change
    create_table :laundry_order_items do |t|
      t.datetime :time_ordered
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
