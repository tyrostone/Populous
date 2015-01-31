json.array!(@seats) do |seat|
  json.extract! seat, :id, :district_id, :level_id, :cycle_id, :elected, :name
  json.url seat_url(seat, format: :json)
end
