json.array!(@rooms) do |room|
  json.extract! room, :id, :room_number, :room_type, :room_capacity, :room_price, :occupant_count, :room_status, :floor_area, :bed_count, :bathroom_count
  json.url room_url(room, format: :json)
end
