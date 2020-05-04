require 'test_helper'

class CompagnyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get compagny_index_url
    assert_response :success
  end

end
