json.array!(@laundry_orders) do |laundry_order|
  json.extract! laundry_order, :id, :payment_due
  json.url laundry_order_url(laundry_order, format: :json)
end
