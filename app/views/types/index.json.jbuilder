json.array!(@types) do |type|
  json.extract! type, :id, :name, :short
  json.url type_url(type, format: :json)
end
