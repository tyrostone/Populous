json.array!(@counties) do |county|
  json.extract! county, :id, :state_id, :name, :short
  json.url county_url(county, format: :json)
end
