class CreateLaundryOrders < ActiveRecord::Migration
  def change
    create_table :laundry_orders do |t|
      t.decimal :payment_due

      t.timestamps null: false
    end
  end
end
