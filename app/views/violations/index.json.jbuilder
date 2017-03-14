json.array!(@violations) do |violation|
  json.extract! violation, :id, :violation_type, :violation_points, :violation_description
  json.url violation_url(violation, format: :json)
end
