json.array!(@events) do |event|
  json.extract! event, :id, :name, :location, :city, :state, :zipcode, :description, :time, :date
  json.url event_url(event, format: :json)
end
