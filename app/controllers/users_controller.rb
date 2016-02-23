class UsersController < ApplicationController

  def index
    @users= User.all
    render :index
  end

  def new #maybe use a modal for this instead
    @user = User.new
    render :new
  end

  def create
    @user = User.create(user_params)
    login(@user) # <-- login the user
    redirect_to "/users/#{@user.id}" # <-- go to show
  end

  def show
    @user = User.find(params[:id])
    render = :show
  end

  # def edit
  # end

  # def delete
  # end

private 

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
