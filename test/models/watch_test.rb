require "test_helper"

class WatchTest < ActiveSupport::TestCase
  it "is associated to an exterior" do
    watch = Watch.first
    _(watch.exterior << Exterior.first).must_be true
  end
end
