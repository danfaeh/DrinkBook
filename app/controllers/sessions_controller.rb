class SessionsController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.confirm(user_params)
    if @user
      login(@user)
      redirect_to "/recipes"
    else
      redirect_to "/login"
      flash[:notice] = "username / password do not match. Try Again."
    end
  end
 
  def destroy
    logout
    redirect_to "/"
  end

  private 

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
