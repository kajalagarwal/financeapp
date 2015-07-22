class UsersController < ApplicationController
  
  def index
    @user = User.all.paginate(page: params[:page], per_page: 5)
  end
  def show
    @user = User.find(params[:id])
  end
  def new
    @user=User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save.
      flash[:success] = "Welcome to the Renew Financial App!"
      redirect_to show_path, :flash => { :success => "Welcome to the Renew Financial App!" }
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
