json.array!(@preferences) do |preference|
  json.extract! preference, :id, :room_type
  json.url preference_url(preference, format: :json)
end
