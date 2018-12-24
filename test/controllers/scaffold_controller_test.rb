require 'test_helper'

class ScaffoldControllerTest < ActionDispatch::IntegrationTest
  test "should get user" do
    get scaffold_user_url
    assert_response :success
  end

  test "should get username:string" do
    get scaffold_username:string_url
    assert_response :success
  end

  test "should get password:digest" do
    get scaffold_password:digest_url
    assert_response :success
  end

end
