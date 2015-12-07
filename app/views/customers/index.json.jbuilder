json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :first_name, :mobile, :picture
  json.url customer_url(customer, format: :json)
end
