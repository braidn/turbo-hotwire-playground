require "application_system_test_case"

class ViewingWatchDetailsTest < ApplicationSystemTestCase
  test 'viewing list of watches' do
    visit root_path
    assert_text ::Watch::Case.first.reference
  end

  test 'viewing the details of a single watch' do
    watch = ::Watch::Case.first

    visit root_path
    click_on watch.manufacturer
    assert_text watch.functions.map(&:name)
  end
end
