json.array!(@washitems) do |washitem|
  json.extract! washitem, :id, :item_name, :item_description
  json.url washitem_url(washitem, format: :json)
end
