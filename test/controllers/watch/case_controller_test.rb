require "test_helper"

class Watch::CaseControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get watch_case_show_url
    assert_response :success
  end

  test "should get index" do
    get watch_case_index_url
    assert_response :success
  end
end
