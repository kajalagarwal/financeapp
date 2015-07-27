class PurchasesController < ApplicationController
  
  
  def index
    @purchases = Purchase.all.paginate(page: params[:page], per_page: 15)
    @purchases1=Purchase.all
    @user=User.all
    @current_user||=User.find_by(id: session[:user_id])
    @purch=Purchase.new
  end

  def import
    begin
       Purchase.import(params[:file])
       redirect_to purchases_path,notice: "Products imported."
    rescue
       redirect_to purchases_path, notice: "Invalid CSV file format. Please check the file for header match."
    end
  end
   def new
    @purch=Purchase.new
   end
   def create
    @purch = Purchase.create!(purch_params)
   end

  private

    def purch_params
      params.require(:purchase).permit(:PurchaserName, :ItemDescription, :ItemPrice,
                                   :MerchantAddress,:MerchantName,:PurchaseQuantity)
    end

end


  