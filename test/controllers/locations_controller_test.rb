require "test_helper"

class LocationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get locations_url
    assert_response :success
  end

  test "should get index with type" do
    get locations_url, params: { type: "Dungeon" }
    assert_response :success
  end

  # how to test empty set if type doesn't exist?

  test "should get show" do
    get location_url(dungeons(:known_dungeon))
    assert_response :success
  end

  test "should get show via type route" do
    get dungeon_url(dungeons(:unknown_dungeon))
    assert_response :success
  end
end
