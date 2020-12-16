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

  test "should allow similar names for different subclasses" do
    dungeon = Dungeon.new(name: "Test")
    assert dungeon.save
    geo = Geography.new(name: "Test")
    assert geo.save
    muni = Municipality.new(name: "Test")
    assert muni.save
  end

  test "should scope visited locations" do
    assert_equal 3, Location.visited.size
  end

  test "should scope visited dungeons" do
    assert_equal dungeons(:known_dungeon), Location.dungeons.visited.first
  end

  test "should scope unvisited geographies" do
    assert_equal geographies(:unknown_geography), Location.geographies.unvisited.first
  end
end
