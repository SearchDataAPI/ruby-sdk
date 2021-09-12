# frozen_string_literal: true

require "searchdata_sdk"

params = {
  api_key: "{API_KEY}",
  engine: "bing",
  q: "coffee"
}

client = BingSearch.new(params)
result = client.get_json

pp result
puts "Bing demo passed."
exit 0
