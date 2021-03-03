class UsersController < ApplicationController

  before_action :set_user, only: [ :show, :edit, :update ]

  def new
    @user = User.new
  end

  def create
    # Create a seeker
    @user = User.new(user_params)
    @user.kind = "Seeker"
    @user.charity = current_user.charity

    if @user.save
      redirect_to seeker_path(@user)
    else
      render :new
    end
  end
  
  def show
  end

  def index
    @users = User.where(charity: current_user.charity, kind: "Seeker")
  end

  def edit
  end
  
  def update
    if @user.update(user_params)
      redirect_to seeker_path(@user)
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :description)
  end
end
