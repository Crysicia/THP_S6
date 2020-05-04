require "application_system_test_case"

class LandingsTest < ApplicationSystemTestCase
  test "Avatar is present" do
    visit root_path
    assert_selector('.avatar-large')
  end
  
  test "Navbar is present" do
    visit root_path
    assert_selector('.navbar')
  end
  
  test "Tab is present" do
    visit root_path
    assert_selector('.tab')
  end
  
  test "Card is present" do
    visit root_path
    assert_selector('.card')
  end
end