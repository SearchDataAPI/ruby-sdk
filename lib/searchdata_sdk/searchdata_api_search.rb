# frozen_string_literal: true

require "open-uri"
require "json"

GOOGLE_ENGINE = "google"
BING_ENGINE = "bing"
YANDEX_ENGINE = "yandex"

# Abstract HTTP client for api.searchdata.io
class SearchDataAPISearch
  MAIN_API = "api.searchdata.io"
  MAIN_API_PATH = "/v1"
  LOCATIONS_API = "locations.searchdata.io"

  attr_accessor :params

  def initialize(params, engine = nil)
    @params = params
    @params[:engine] ||= engine
    raise "`engine` must be defined in params or a second argument" if @params[:engine].nil?
  end

  def check_params(keys = [])
    return if @params.keys == [:engine]
    raise "keys must be a list of String or Symbol" unless keys.instance_of?(Array)

    missing = []
    keys.each do |key|
      case key.class.to_s
      when "String"
        missing << key.to_s if @params[key].nil? && @params[key.to_sym].nil?
      when "Symbol"
        missing << key.to_s if @params[key].nil? && @params[key.to_s].nil?
      else
        raise "keys must contains Symbol or String"
      end
    end

    raise "missing required keys in params.\n #{missing.join(",")}" unless missing.empty?
  end

  def get_location
    @params.delete(:engine)
    @params.delete(:api_key)
    JSON.parse(get_results(LOCATIONS_API, ""))
  end

  def get_json
    get_results(MAIN_API, MAIN_API_PATH)
  end

  def get_hash
    JSON.parse(get_json)
  end

  def get_results(api, path)
    url = construct_url(api, path)
    URI(url).open(read_timeout: 600).read
  rescue OpenURI::HTTPError => e
    error = JSON.parse(e.io.read)["error"]
    if error
      puts "server returns error from url : #{url}"
      raise error
    else
      puts "fail: fetch url: #{url}"
    end
  rescue StandardError => e
    puts "fail: fetch url: #{url}"
    raise e
  end

  def construct_url(api, path)
    @params[:api_key] = $searchdata_api_key unless $searchdata_api_key.nil?

    @params.delete_if { |_, value| value.nil? }

    URI::HTTPS.build(host: api, path: path, query: URI.encode_www_form(@params))
  end

  def self.searchdata_api_key=(api_key)
    self.api_key = api_key
  end

  def self.api_key=(api_key)
    $searchdata_api_key = api_key
  end

  def api_key
    @params[:api_key] || @params[:searchdata_api_key] || $searchdata_api_key
  end
end
