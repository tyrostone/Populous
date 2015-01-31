json.array!(@terms) do |term|
  json.extract! term, :id, :representative_id, :seat_id, :startterm, :endterm, :name
  json.url term_url(term, format: :json)
end
