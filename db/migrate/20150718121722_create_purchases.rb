class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :PurchaserName
      t.string :ItemDescription
      t.integer :ItemPrice
      t.integer :PurchaseQuantity
      t.string :MerchantAddress
      t.string :MerchantName

      t.timestamps null: false
    end
  end
end
