json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :term_id, :comittee_id, :startass, :endass
  json.url assignment_url(assignment, format: :json)
end
