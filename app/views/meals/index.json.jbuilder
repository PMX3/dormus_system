json.array!(@meals) do |meal|
  json.extract! meal, :id, :name, :breakfast_meal, :breakfast_drink, :lunch_meal, :lunch_drink, :dinner_meal, :dinner_drink, :price
  json.url meal_url(meal, format: :json)
end
