# frozen_string_literal: true

require "searchdata_sdk"

raise "API_KEY environment variable must be set" if ENV["API_KEY"].nil?

params = {
  api_key: ENV["API_KEY"],
  engine: "google",
  q: "coffee"
}

client = GoogleSearch.new(params)
result = client.get_json

pp result
puts "Google demo passed."
exit 0