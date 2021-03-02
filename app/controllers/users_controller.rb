class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    # Create a seeker
    @user = User.new(user_params)
    @user.kind = "Seeker"

    if @user.save
      # redirect_to user_path(@user)
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
