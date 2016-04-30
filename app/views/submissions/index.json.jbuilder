json.array!(@submissions) do |submission|
  json.extract! submission, :id, :date_sent
  json.url submission_url(submission, format: :json)
end
