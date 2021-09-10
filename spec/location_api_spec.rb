# frozen_string_literal: true

require_relative "../lib/searchdata_sdk/google_search"

RSpec.describe "Location API" do
  before(:all) do
    GoogleSearch.api_key = nil
  end

  it "search for locations" do
    request = GoogleSearch.new(q: "Austin", limit: 5)
    locations_list = request.get_location
    expect(locations_list.size).to eq(5)

    first_location = locations_list.first
    expect(first_location["Criteria ID"]).to eq("1001982")
    expect(first_location["Name"]).to eq("Austin")
    expect(first_location["Canonical Name"]).to eq("Austin,Manitoba,Canada")
    expect(first_location["Parent ID"]).to eq("20115")
    expect(first_location["Country Code"]).to eq("CA")
    expect(first_location["Target Type"]).to eq("City")
    expect(first_location["Status"]).to eq("Active")
  end
end
