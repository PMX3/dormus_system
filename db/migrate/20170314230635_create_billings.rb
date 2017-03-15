class CreateBillings < ActiveRecord::Migration
  def change
    create_table :billings do |t|
      t.integer :tenant_id
      t.decimal :total_amount
      t.date :due_date
      t.integer :bill_type
      t.text :description
      t.datetime :datetime_paid
      t.decimal :amount_paid
      t.decimal :outstanding_balance

      t.timestamps null: false
    end
  end
end
