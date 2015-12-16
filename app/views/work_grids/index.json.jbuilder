json.array!(@work_grids) do |work_grid|
  json.extract! work_grid, :id, :work_day_id, :slot_id
  json.url work_grid_url(work_grid, format: :json)
end
