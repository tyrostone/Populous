json.array!(@countries) do |country|
  json.extract! country, :id, :name, :short
  json.url country_url(country, format: :json)
end
