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

  def index
    @bookings = current_user.charity.bookings
  end

  def seeker_index
    @user = User.find(params[:id])
    @bookings = Booking.where(user_id: @user)
  end

  def accept_booking
    @booking.update( status: "Accepted" )
    redirect_to seeker_bookings(params[@booking.user])
  end

  def decline_booking
    @booking.update( status: "Declined" )
    redirect_to seeker_bookings(params[@booking.user])
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
