require "application_system_test_case"

class ViewingWatchDetailsTest < ApplicationSystemTestCase
  test "viewing list of watches" do
    visit watch_listing_path
    assert_text ::Watch::Case.first.name
  end
end
