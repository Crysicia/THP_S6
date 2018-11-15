require 'test_helper'

class DesignControllerTest < ActionDispatch::IntegrationTest
  test "should get jeune" do
    get design_jeune_url
    assert_response :success
  end

end
