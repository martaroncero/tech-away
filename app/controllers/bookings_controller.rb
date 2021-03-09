class BookingsController < ApplicationController

  before_action :set_booking, only: [ :decline_booking, :accept_booking ]
  def create
    @product = Product.find(params[:product_id])
    @booking = Booking.new
    @booking.product = @product
    @booking.user = User.where(charity: current_user.charity, kind: "Seeker").first
    @booking.charity = current_user.charity
    @booking.status = "pending"
    @booking.save
    redirect_to bookings_path
  end

  def seeker_index
    @user = User.find(params[:id])
    @pending_bookings = Booking.where(user_id: @user, status: "Pending")
    @accepted_bookings = Booking.where(user_id: @user, status: "Accepted")
    @declined_bookings = Booking.where(user_id: @user, status: "Declined")
  end

  def accept_booking
    @booking.update(status: "Accepted")
    redirect_to charity_path(params[:charity_id])
  end

  def decline_booking
    @booking.update(status: "Declined")
    redirect_to charity_path(params[:charity_id])
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
