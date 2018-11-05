require 'test_helper'
require 'capybara/rails'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test 'Login is present when not logged in' do
    get '/'
    assert_select 'body > nav > ul > li:nth-child(2) > a', 'Login', 'Login is not present when not logged in'
  end
  
  test 'Sign up presence if logged out' do
    get '/'
    assert_select 'body > nav > ul > li:nth-child(1) > a', 'Sign up', 'Sign up is not present when not logged in'
  end
end
