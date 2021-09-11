# frozen_string_literal: true

require_relative "../lib/searchdata_sdk/bing_search"

RSpec.describe "Bing Search API" do
  before(:all) do
    BingSearch.api_key = ENV["API_KEY"]
    @request = BingSearch.new(q: "coffee")
  end

  it "get_hash" do
    hash = @request.get_hash
    expect(hash["search_parameters"]["engine"]).to eq("bing")
    # expect(hash["search_information"]["total_results"]).to be > 0
    expect(hash["organic_results"].size).to be >= 5
    # expect(hash['organic_results'][0][:title]).to match /coffee/i
    # expect(hash['ads'].size).to be > 1
  end

  it "get_json" do
    json = @request.get_json
    expect(json.size).to be > 9000
    expect(json).to match /coffee/i
  end
end
