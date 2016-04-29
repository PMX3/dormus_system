class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :deal_type
      t.decimal :amount_due
      t.decimal :amount_paid
      t.datetime :deal_timestamp
      t.string :payment_for

      t.timestamps null: false
    end
  end
end
