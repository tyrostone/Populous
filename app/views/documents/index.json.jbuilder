json.array!(@documents) do |document|
  json.extract! document, :id, :representative_id, :name, :description
  json.url document_url(document, format: :json)
end
