json.array!(@work_days) do |work_day|
  json.extract! work_day, :id, :name
  json.url work_day_url(work_day, format: :json)
end
