require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "should get title" do
    get :title
    assert_response :success
  end

  test "should get body:text" do
    get :body:text
    assert_response :success
  end

end
