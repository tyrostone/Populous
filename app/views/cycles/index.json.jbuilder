json.array!(@cycles) do |cycle|
  json.extract! cycle, :id, :name, :startcycle, :endcycle
  json.url cycle_url(cycle, format: :json)
end
