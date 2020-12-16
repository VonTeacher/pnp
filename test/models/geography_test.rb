require "test_helper"

class GeographyTest < ActiveSupport::TestCase
  test "should save" do
    geography = geographies(:known_geography)
    assert geography.save
  end

  test "should not save with duplicate name" do
    geography = geographies(:known_geography)
    geography.save
    second_geography = Geography.new(name: "Known Geography")
    assert_not second_geography.save
  end
end
