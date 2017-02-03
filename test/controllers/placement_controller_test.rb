require 'test_helper'

class PlacementControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get placements_path
    assert_response :success
  end

  test "should get create" do
    post placements_path
    assert_response :found
  end

  test "should get show" do
    get placement_path(placements(:one).id)
    assert_response :success
  end

  test "should get edit" do
    get placement_path(placements(:one).id)
    assert_response :success
  end

end
