json.array!(@statement_of_accounts) do |statement_of_account|
  json.extract! statement_of_account, :id, :electric_due, :water_due, :deposit, :room_total_due, :personal_laundry_fees, :personal_other_fees, :personal_meal_plan_fees, :personal_total_due, :due_date
  json.url statement_of_account_url(statement_of_account, format: :json)
end
