require 'json'

def response
  `curl "https://api.meetup.com/2/open_events?" `
end

def parsed
  JSON.parse(response)
end


data = reponse.parsed


data[:items].each do |meetup|
  Event.create(description: meetup["description"],
               city:        meetup["city"],
               address:     meetup["address"],
               name:        meetup["name"],
               lon:         meetup["lon"],
               lat:         meetup["lat"],
               

end
  # (position_title: house["position_title"],
