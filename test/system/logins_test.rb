require "application_system_test_case"

class LoginsTest < ApplicationSystemTestCase
  def setup
    User.create(first_name: "Isaac", last_name: "Asimov", email: "isaac.asimov@thp.org", password: "terminus", password_confirmation: "terminus")
    @user = {"first_name" => "Hari", "last_name" => "Seldon", "email" => "hari.seldon@thp.org", "password" => "foundation", "password_confirmation" => "foundation"}
  end
  test "Logout present when login" do
    visit login_path
    fill_in 'session_email', with: 'isaac.asimov@thp.org'
    fill_in 'session_password', with: 'terminus'
    find('input[type="submit"]').click
    visit root_path
    print "\nLogout present when login -> "
    assert_selector('body > nav > ul > a', text: 'Logout')
  end
  
  test "Cannot not access club when logout" do
    visit club_path
    print "\nCannot access club when logout -> "
    assert_current_path '/login'
  end
  
  test "Cannot signup with incomplete informations" do
    visit signup_path
    fill_in 'user_first_name', with: @user["first_name"]
    #fill_in 'user_last_name', with: @user["last_name"]
    fill_in 'user_email', with: @user["email"]
    fill_in 'user_password', with: @user["password"]
    fill_in 'user_password_confirmation', with: @user["password_confirmation"]
    find('input[type="submit"]').click
    print "Cannot signup with incomplete informations -> "
    assert_current_path '/signup'
  end
end
