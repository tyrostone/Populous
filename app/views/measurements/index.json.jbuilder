json.array!(@measurements) do |measurement|
  json.extract! measurement, :id, :name, :description
  json.url measurement_url(measurement, format: :json)
end
