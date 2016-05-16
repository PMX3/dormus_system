json.array!(@dormer_notifications) do |dormer_notification|
  json.extract! dormer_notification, :id
  json.url dormer_notification_url(dormer_notification, format: :json)
end
