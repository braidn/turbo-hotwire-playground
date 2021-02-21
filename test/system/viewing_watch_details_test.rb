require "application_system_test_case"

class ViewingWatchDetailsTest < ApplicationSystemTestCase
  test "viewing list of watches" do
    visit watch_listing_path
    assert_text ::Watch::Case.first.reference
  end

  test "viewing the details of a single watch" do
    watch = ::Watch::Case.first

    visit watch_listing_path
    click_on watch.reference
    assert_text watch.functions.map(&:name)
  end
end
