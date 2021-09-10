# frozen_string_literal: true

require_relative "searchdata_api_search"

class YandexSearch < SearchDataAPISearch
  def initialize(params = {})
    super(params, YANDEX_ENGINE)
    check_params(%i[text engine])
  end

  def get_location
    raise "`location` is not supported by #{YANDEX_ENGINE}"
  end
end
