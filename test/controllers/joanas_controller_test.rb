require 'test_helper'

class JoanasControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get joanas_show_url
    assert_response :success
  end

end
