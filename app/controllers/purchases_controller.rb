class PurchasesController < ApplicationController
  
  
  def index
    @purchases = Purchase.all
  end

  def import
    begin
    Purchase.import(params[:file])
    redirect_to purchases_path,notice: "Products imported."
   rescue
      redirect_to purchases_path, notice: "Invalid CSV file format. Please check the file for header match."
    end
  end

end


  