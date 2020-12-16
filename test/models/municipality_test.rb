require "test_helper"

class MunicipalityTest < ActiveSupport::TestCase
  test "should save" do
    municipality = municipalities(:known_municipality)
    assert municipality.save
  end

  test "should not save with duplicate name" do
    municipality = municipalities(:known_municipality)
    municipality.save
    second_municipality = Municipality.new(name: "Known Municipality")
    assert_not second_municipality.save
  end
end
