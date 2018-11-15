require 'test_helper'

class TemplateControllerTest < ActionDispatch::IntegrationTest
  test "should get cible" do
    get template_cible_url
    assert_response :success
  end

end
