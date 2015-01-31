json.array!(@districts) do |district|
  json.extract! district, :id, :country_id, :state_id, :county_id, :level_id, :name
  json.url district_url(district, format: :json)
end
