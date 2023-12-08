json.extract! meal, :id, :date, :name, :calories, :created_at, :updated_at
json.url meal_url(meal, format: :json)
