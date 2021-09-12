# frozen_string_literal: true

require "searchdata_sdk"

params = {
  api_key: "{API_KEY}",
  engine: "google",
  q: "coffee"
}

client = GoogleSearch.new(params)
result = client.get_json

pp result
puts "Google demo passed."
exit 0
