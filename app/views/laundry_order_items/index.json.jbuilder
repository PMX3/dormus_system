json.array!(@laundry_order_items) do |laundry_order_item|
  json.extract! laundry_order_item, :id, :time_ordered, :quantity
  json.url laundry_order_item_url(laundry_order_item, format: :json)
end
