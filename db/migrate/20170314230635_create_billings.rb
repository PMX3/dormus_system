class CreateBillings < ActiveRecord::Migration
  def change
    create_table :billings do |t|
      t.integer :tenant_id
      t.decimal :total_amount
      t.date :due_date
      t.integer :bill_type
      t.text :description
      t.datetime :datetime_paid
      t.boolean :paid, default: false

      t.timestamps null: false
    end
  end
end
