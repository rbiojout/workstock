json.array!(@regions) do |region|
  json.extract! region, :id, :name, :opening_date, :country
  json.url region_url(region, format: :json)
end
