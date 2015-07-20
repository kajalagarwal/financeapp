class Purchase < ActiveRecord::Base
    
  require 'csv'
    validates(:ItemPrice,:PurchaseQuantity,:ItemDescription,:PurchaserName,:MerchantAddress,:MerchantName, presence: true)
     
     def self.import(file)
      CSV.foreach(file.path,headers: false) do |row|
        row=row.to_a
        Purchase.create!(ItemPrice: row[3],PurchaseQuantity: row[2],ItemDescription: row[1],PurchaserName: row[0],MerchantAddress: row[4],MerchantName: row[5])
      end
     end
    
   
    
 
end