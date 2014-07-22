json.array!(@cars) do |car|
  json.extract! car, :id, :name, :description, :picture
  json.url car_url(car, format: :json)
end
