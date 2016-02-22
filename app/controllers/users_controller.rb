class UsersController < ApplicationController

  def index
    @users = User.all
    render :index
  end

  # def new
  # end

  # def show
  # end

  # def create
  # end

  # def edit
  # end

  # def delete
  # end

end
