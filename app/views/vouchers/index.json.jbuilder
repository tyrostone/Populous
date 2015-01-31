json.array!(@vouchers) do |voucher|
  json.extract! voucher, :id, :contribution_id
  json.url voucher_url(voucher, format: :json)
end
