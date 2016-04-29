json.array!(@food_plans) do |food_plan|
  json.extract! food_plan, :id, :food_plan_date
  json.url food_plan_url(food_plan, format: :json)
end
