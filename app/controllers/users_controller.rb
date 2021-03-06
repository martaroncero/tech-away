class UsersController < ApplicationController

  before_action :set_user, only: [ :show, :edit, :update ]

  def new
    @user = User.new
  end

  def create
    # Create a seeker
    @user = User.new(user_params)
    @user.password = "123456"
    @user.kind = "Seeker"
    @user.charity = current_user.charity

    if @user.save
      redirect_to seeker_path(@user)
    else
      render :new
    end
  end

  def show
    @request = Request.new
  end

  def dashboard
    @user = current_user
    @accepted_products = @user.products.where(status: "Accepted")
    @pending_products = @user.products.where(status: "Pending")
    @declined_products = @user.products.where(status: "Declined")
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
    params.require(:user).permit(:email, :password, :first_name, :last_name, :description, :photo)
  end
end
