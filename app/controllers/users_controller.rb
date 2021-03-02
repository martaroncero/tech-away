class UsersController < ApplicationController

  def new
    @user = User.new
    raise
  end

  def create
    @user = User.new(user_params)
  end
  
  def show

  end

  def index

  end

  def edit

  end

  def update

  end

  private

  def set_user

  end

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :description)
  end
end
