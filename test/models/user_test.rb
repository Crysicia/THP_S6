require 'test_helper'

class UserTest < ActiveSupport::TestCase
<<<<<<< HEAD
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
=======
  # test "the truth" do
  #   assert true
  # end
  test 'valid user' do
    user =  User.new(last_name: 'Hammond', email: 'john@example.com')
    assert_not_nil  user.valid?
  end

  test 'invalid without first_name' do
    user =  User.new(first_name: '   ', last_name: 'Hammond', email: 'john@example.com')
    refute user.valid?, 'user is valid without a first_name'
    assert_not_nil user.errors[:first_name], 'no validation error for first_name present'
  end

  test 'invalid if email is not unique' do
    user =  User.new(first_name: 'John', last_name: 'Hammond', email: 'john@example.com')
    user_copy = user.dup
    refute user_copy.valid?
>>>>>>> master
  end
end
