require "application_system_test_case"

class IntegrationsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit integrations_url
  #
  #   assert_selector "h1", text: "Integration"
  # end
  
  test "Homepage should display" do
    visit root_path
    assert_response !(:error)
  end
end
