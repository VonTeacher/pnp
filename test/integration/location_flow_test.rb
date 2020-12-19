require "test_helper"

class LocationFlowTest < ActionDispatch::IntegrationTest
  test "can see Locations index" do
    get "/locations"
    assert_select "h1", "Locations"
  end

  test "can see page title" do
    get "/locations"
    assert_select "title", "Locations | Pen & Paper"
  end

  test "can see Dungeons index" do
    get "/dungeons"
    assert_select "title", "Dungeons | Pen & Paper"
    assert_select "h1", "Dungeons"
  end

  test "can see Geographies index" do
    get "/geographies"
    assert_select "title", "Geographies | Pen & Paper"
    assert_select "h1", "Geographies"
  end

  test "can see Municipalities index" do
    get "/municipalities"
    assert_select "title", "Municipalities | Pen & Paper"
    assert_select "h1", "Municipalities"
  end

  test "can see Add Location" do
    get "/locations/new"
    assert_select "title", "Add Location | Pen & Paper"
  end

  # test "can add location" do
  #   get "/locations"
  #   click_on "+ Add a New Location"
  #   click_on "Dungeon"
  #   fill_in "Name", with: "Demo Dungeon"
  #   fill_in "Description", with: "A very ephemeral dungeon"
  #   click_on "Visited"
  #   click_on "Submit"
  #   assert_select "title", "Demo Dungeon | Pen & Paper"
  # end
end
