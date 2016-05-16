json.array!(@notifications) do |notification|
  json.extract! notification, :id, :content, :publish_date, :read_status, :dismiss_date
  json.url notification_url(notification, format: :json)
end
