require "test_helper"

class Watch::CasesControllerTest < ActionDispatch::IntegrationTest
  describe "#show" do
    it "Correctly renders the route" do
      get watch_case_url(Watch::Case.first)
      _(@response.response_code).must_equal 200
    end
  end

  describe "#index" do
    it "Correctly renders the route" do
      get root_url
      _(@response.response_code).must_equal 200
    end
  end
end
