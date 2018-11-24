require 'test_helper'

class FormControllerTest < ActionDispatch::IntegrationTest
  test "should get formindex" do
    get form_formindex_url
    assert_response :success
  end

end
