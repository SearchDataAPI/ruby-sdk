# frozen_string_literal: true

require_relative "searchdata_api_search"

# Google Search Result powered by SearchData API
# Check code samples at examples/google_demo.ro
# Docs: https://app.searchdata.io/documentation/google-search
class GoogleSearch < SearchDataAPISearch
  def initialize(params = {})
    super(params, GOOGLE_ENGINE)
    check_params(%i[q engine])
  end
end
