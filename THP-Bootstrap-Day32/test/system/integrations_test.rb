require "application_system_test_case"

class IntegrationsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit integrations_url
  #
  #   assert_selector "h1", text: "Integration"
  # end
  
  test "Homepage should display h1" do
    visit root_path
    assert_selector "h1"
  end
  
  test "Homepage should display an image" do
    visit root_path
    assert_selector "img"
  end
  
  test "Homepage should display form" do
    visit root_path
    assert_selector "form"
  end
  
  test "LP 2 should display h1" do
    visit compagny_path
    assert_selector "h1"
  end
  
  test "LP 2 should display an image" do
    visit compagny_path
    assert_selector "img"
  end
  
  test "LP 2 should display form" do
    visit compagny_path
    assert_selector "form"
  end
  
  test "LP 3 should display h1" do
    visit cible_path
    assert_selector "h1"
  end
  
  test "LP 3 should display header" do
    visit cible_path
    assert_selector "header"
  end
  
  test "LP 3 should display form" do
    visit cible_path
    assert_selector "form"
  end
end
