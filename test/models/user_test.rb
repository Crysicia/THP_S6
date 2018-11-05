require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(first_name: "Isaac", last_name: "Asimov", email: "isaac.asimov@thp.org", password: "terminus", password_confirmation: "terminus")
  end
  
  test 'Valid user' do
    assert @user.valid?
  end
  
  test 'Invalid w/o first name' do
    @user.first_name = ""
    assert_not @user.valid?, 'user is valid without a name'
  end
  
  test 'Invalid w/ blank last name' do
    @user.last_name = " "
    assert_not @user.valid?, 'user is valid with a blank last name'
  end
  
  test 'Invalid w/ same email as another user' do
    assert_not_nil @user.dup.valid?
  end
end
