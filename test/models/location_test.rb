require "test_helper"

class LocationTest < ActiveSupport::TestCase
  test "should save with type and name" do
    location = locations(:dungeon_loc)
    assert location.save
  end

  test "should not save without type" do
    location = locations(:bad_loc)
    assert_not location.save
  end

  test "should not save without name" do
    location = locations(:dungeon_loc)
    location.name = nil
    assert_not location.save
  end
end
