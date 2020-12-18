require "test_helper"

class LocationFlowTest < ActionDispatch::IntegrationTest
  test "can see Locations index" do
    get "/locations"
    assert_select "h1", "Locations"
  end

  test "can see page title" do
    get "/locations"
    assert_select "title", "Pen & Paper | Locations"
  end

  test "can see Dungeons index" do
    get "/dungeons"
    assert_select "h1", "Dungeons"
  end

  test "can see Geographies index" do
    get "/geographies"
    assert_select "h1", "Geographies"
  end

  test "can see Municipalities index" do
    get "/municipalities"
    assert_select "h1", "Municipalities"
  end
end
