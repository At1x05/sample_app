require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user= User.new(name: 'Example User', email: 'user@example.com', password: 'foobar', password_confirmation: 'foobar')
  end
  
   test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email=@user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end
  
  test "password should have a minimum lenght" do
    @user.password= @user.password_confirmation= "a" * 5
    assert_not @user.valid?
  end
end