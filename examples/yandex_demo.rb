# frozen_string_literal: true

require "searchdata_sdk"

raise "API_KEY environment variable must be set" if ENV["API_KEY"].nil?

params = {
  api_key: ENV["API_KEY"],
  engine: "yandex",
  text: "coffee"
}

client = YandexSearch.new(params)
result = client.get_json

pp result
puts "Yandex demo passed."
exit 0
