# frozen_string_literal: true

require_relative "searchdata_api_search"

# Bing Search Result powered by SearchData API
# Check code samples at examples/bing_demo.rb
# Docs: https://app.searchdata.io/documentation/bing-search
class BingSearch < SearchDataAPISearch
  def initialize(params = {})
    super(params, BING_ENGINE)
    check_params(%i[q engine])
  end
end
