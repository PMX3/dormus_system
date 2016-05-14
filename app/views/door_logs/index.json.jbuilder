json.array!(@door_logs) do |door_log|
  json.extract! door_log, :id, :time_enter, :direction, :dormer_id
  json.url door_log_url(door_log, format: :json)
end
