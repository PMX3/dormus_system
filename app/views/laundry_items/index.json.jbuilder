json.array!(@laundry_items) do |laundry_item|
  json.extract! laundry_item, :id, :description, :price
  json.url laundry_item_url(laundry_item, format: :json)
end
