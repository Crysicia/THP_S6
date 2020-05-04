require 'test_helper'

class GeneralControllerTest < ActionDispatch::IntegrationTest
  test "should get team" do
    get general_team_url
    assert_response :success
  end

  test "should get contatct" do
    get general_contatct_url
    assert_response :success
  end

end
