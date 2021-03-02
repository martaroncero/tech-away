class UsersController < ApplicationController

  def new
    @user = User.new
    @charity = current_user.charity
  end

  def create
    # Create a seeker
    @user = User.new(user_params)
    @user.kind = "Seeker"
    @user.charity = current_user.charity

    if @user.save
      redirect_to root_path
    else
      render :new
    end
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
