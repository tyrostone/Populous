json.array!(@contributions) do |contribution|
  json.extract! contribution, :id, :user_id, :representative_id, :issue_id, :value
  json.url contribution_url(contribution, format: :json)
end
