json.array!(@slots) do |slot|
  json.extract! slot, :id, :start_time, :duration, :prefered
  json.url slot_url(slot, format: :json)
end
