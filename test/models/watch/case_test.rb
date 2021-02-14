require "test_helper"

class Watch::CaseTest < ActiveSupport::TestCase
  it "is associated to an exterior" do
    watch = ::Watch::Case.first
    exterior = ::Watch::Exterior.first

    watch.exterior = exterior

    _(watch.exterior).must_equal exterior
  end
end
