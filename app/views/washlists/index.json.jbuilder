json.array!(@washlists) do |washlist|
  json.extract! washlist, :id, :reference_no
  json.url washlist_url(washlist, format: :json)
end
