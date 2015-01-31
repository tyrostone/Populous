json.array!(@representatives) do |representative|
  json.extract! representative, :id, :district_id, :party_id, :fname, :lname, :phone, :email
  json.url representative_url(representative, format: :json)
end
