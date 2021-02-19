require "test_helper"

class Watch::CaseControllerTest < ActionDispatch::IntegrationTest
  describe "#show" do
    it "Correctly renders the route" do
      get watch_case_show_url
      _(@response.response_code).must_equal 200
    end
  end

  describe "#index" do
    it "Correctly renders the route" do
      get watch_listing_url
      _(@response.response_code).must_equal 200
    end
  end
end
