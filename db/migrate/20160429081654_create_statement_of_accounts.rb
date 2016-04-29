class CreateStatementOfAccounts < ActiveRecord::Migration
  def change
    create_table :statement_of_accounts do |t|
      t.decimal :electric_due
      t.decimal :water_due
      t.decimal :deposit
      t.decimal :room_total_due
      t.decimal :personal_laundry_fees
      t.string :personal_other_fees
      t.decimal :personal_meal_plan_fees
      t.decimal :personal_total_due
      t.date :due_date

      t.timestamps null: false
    end
  end
end
