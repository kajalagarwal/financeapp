require 'test_helper'

class PurchaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @purchase=Purchase.new(ItemPrice: 20, PurchaseQuantity:30,ItemDescription:"kajal agarwal", PurchaserName:"Sam phone", MerchantAddress:"234 Address", MerchantName: "kajal ajah")
  end
  test "Purchase should contain Itemprice" do
    assert @purchase.valid? 
  end
  
  test "purchase should contain ItemPrice" do
   @purchase.ItemPrice=""
   assert_not @purchase.valid?
  end
   
   
   test "purchase should contain PurchaserName" do
   @purchase.PurchaserName=""
   assert_not @purchase.valid?
  end 
   
end

