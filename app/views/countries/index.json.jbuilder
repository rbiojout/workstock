json.array!(@countries) do |country|
  json.extract! country, :id, :name, :opening_date
  json.url country_url(country, format: :json)
end
