class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :deal_type
      t.decimal :amount_due
      t.decimal :amount_paid
      t.datetime :deal_timestamp
      t.string :payment_for
      t.belongs_to :statement_of_account, index: true

      t.timestamps null: false
    end
  end
end
