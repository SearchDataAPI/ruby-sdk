# frozen_string_literal: true

require "searchdata_sdk"

params = {
  api_key: "{API_KEY}",
  engine: "yandex",
  text: "coffee"
}

client = YandexSearch.new(params)
result = client.get_json

pp result
puts "Yandex demo passed."
exit 0
