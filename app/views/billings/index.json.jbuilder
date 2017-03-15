json.array!(@billings) do |billing|
  json.extract! billing, :id, :tenant_id, :total_amount, :due_date, :bill_type, :description, :datetime_paid, :amount_paid, :outstanding_balance
  json.url billing_url(billing, format: :json)
end
