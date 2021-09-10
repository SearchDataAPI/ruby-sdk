# frozen_string_literal: true

require_relative "searchdata_api_search"

class BingSearch < SearchDataAPISearch
  def initialize(params = {})
    super(params, BING_ENGINE)
    check_params(%i[q engine])
  end
end
