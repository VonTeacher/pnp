require "test_helper"

class DungeonTest < ActiveSupport::TestCase
  test "should save" do
    dungeon = dungeons(:known_dungeon)
    assert dungeon.save
  end

  test "should not save with duplicate name" do
    dungeon = dungeons(:known_dungeon)
    dungeon.save
    second_dungeon = Dungeon.new(name: "Known Dungeon")
    assert_not second_dungeon.save
  end
end
