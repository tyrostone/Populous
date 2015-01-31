json.array!(@events) do |event|
  json.extract! event, :id, :issue_id, :user_id, :measurement_id, :value, :description, :contribution, :mark
  json.url event_url(event, format: :json)
end
