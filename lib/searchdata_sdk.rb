# frozen_string_literal: true

# Main module which acts as a namespace for all our classes
module SearchdataSdk
  require_relative "searchdata_sdk/version"
  require_relative "searchdata_sdk/searchdata_api_search"
  require_relative "searchdata_sdk/google_search"
  require_relative "searchdata_sdk/bing_search"
  require_relative "searchdata_sdk/yandex_search"

  class Error < StandardError; end
  # Your code goes here...
end
