# frozen_string_literal: true

require_relative "searchdata_api_search"

class GoogleSearch < SearchDataAPISearch
  def initialize(params = {})
    super(params, GOOGLE_ENGINE)
    check_params(%i[q engine])
  end
end
