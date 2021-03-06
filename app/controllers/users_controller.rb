class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def edit 
    @user = User.find(params[:id]) 
  end
  
  def update
    @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to "/users/"
      else
        render 'edit'
      end
  end
  
  private 
  def user_params 
    params.require(:user).permit(:first_name, :last_name) 
  end
end
