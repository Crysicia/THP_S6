require 'test_helper'

class TemplateControllerTest < ActionDispatch::IntegrationTest
  test "should get ville" do
    get template_ville_url
    assert_response :success
  end

end
