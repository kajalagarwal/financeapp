require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  

  def setup
    @user = User.new(name: "Example User", email: "user@example.com", password: "abcdefgh", password_confirmation:"abcdefgh");

  end
   
   
   test "email should be unique" do
     duplicate_user=@user.dup
     duplicate_user.email = @user.email.upcase
     @user.save
     assert_not duplicate_user.valid?
   end
   
   
  test "should be valid" do
    assert @user.valid?
    
  end
  test "name should be present" do
    @user.name=" "
    
    assert_not @user.valid?
  end
  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end
  test "password should match" do
     @user.password_confirmation="abcdegfg"
     assert_not @user.valid?
  end 
  
  test "email should contains @" do
     @user.email="abcdegfg"
     assert_not @user.valid?
  end 
  
  test "password too small" do
     @user.password="abcd"
     assert_not @user.valid?
  end 
  test "email should contain @" do
   @user.email="abcdegfg@gmail.com"
     assert @user.valid?
  end 
end

