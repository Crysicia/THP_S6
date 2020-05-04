require 'test_helper'

class TemplateControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  test "should get cible" do
    get template_cible_url
=======
  test "should get ville" do
    get template_ville_url
>>>>>>> 364ae35126ad684c69a678c74e7039489bdc22d0
    assert_response :success
  end

end
