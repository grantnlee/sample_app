class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
      @user = User.new(user_params)
      if @user.save
        # Handle a successful save action
      else
        render 'new'
      end
  end


  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
  end
  


end
