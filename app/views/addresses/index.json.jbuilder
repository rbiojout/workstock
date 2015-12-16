json.array!(@addresses) do |address|
  json.extract! address, :id, :full_address, :city, :zip_code_id, :latitude, :longitude, :user_id
  json.url address_url(address, format: :json)
end
