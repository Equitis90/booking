require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do

    post comments_create_path
    assert_response :found
  end
end
