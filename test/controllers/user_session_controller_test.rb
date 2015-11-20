require 'test_helper'

class UserSessionControllerTest < ActionController::TestCase
  test "should get username" do
    get :username
    assert_response :success
  end

  test "should get password" do
    get :password
    assert_response :success
  end

end
