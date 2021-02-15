require "test_helper"

class Watch::CaseTest < ActiveSupport::TestCase
  describe "assertions" do
    it "to an exterior" do
      watch = ::Watch::Case.first
      exterior = ::Watch::Exterior.first

      watch.exterior = exterior

      _(watch.exterior).must_equal exterior
    end

    it "to a function" do
      watch = ::Watch::Case.first
      function = ::Watch::Function.first

      watch.functions << function

      _(watch.functions).must_include function
    end

    it "to a movement" do
      watch = ::Watch::Case.first
      movement = ::Watch::Movement.first

      watch.movement = movement

      _(watch.movement).must_equal movement
    end
  end
end
