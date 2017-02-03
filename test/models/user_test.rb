require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not create user without login" do
     user = User.new(login: nil, password: 'password', password_confirmation: 'password')
     assert_not user.save
  end

  test "should not create user without password" do
    user = User.new(login: 'nancy', password: nil, password_confirmation: nil)
    assert_not user.save
  end

  test "should not create user with different values in password and password_confirmation fields" do
    user = User.new(login: 'nancy', password: 'password', password_confirmation: 'oops')
    assert_not user.save
  end

  test "should create user with acceptable parameters" do
    fixt_user = users(:joe)
    user = User.new(login: fixt_user.login, password: 'password', password_confirmation: 'password')
    assert user.save
  end
end
