require 'test_helper'

class PlacementControllerTest < ActionDispatch::IntegrationTest
  test "should get index," do
    get placement_index,_url
    assert_response :success
  end

  test "should get create," do
    get placement_create,_url
    assert_response :success
  end

  test "should get delete," do
    get placement_delete,_url
    assert_response :success
  end

  test "should get show," do
    get placement_show,_url
    assert_response :success
  end

  test "should get edit" do
    get placement_edit_url
    assert_response :success
  end

end
