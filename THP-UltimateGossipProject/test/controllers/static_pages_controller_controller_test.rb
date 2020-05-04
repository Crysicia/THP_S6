require 'test_helper'

class StaticPagesControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_controller_home_url
    assert_response :success
  end

end
