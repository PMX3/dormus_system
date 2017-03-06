json.array!(@announcements) do |announcement|
  json.extract! announcement, :id, :announcement_title, :announcement_text, :announcement_date
  json.url announcement_url(announcement, format: :json)
end
