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
<<<<<<< HEAD
    # @user = current_user
  @bookings = current_user.charity.bookings
=======
    @bookings = current_user.charity.bookings
  end

  def seeker_index
    @user = User.find(params[:id])
    @pending_bookings = Booking.where(user_id: @user, status: "Pending")
    @accepted_bookings = Booking.where(user_id: @user, status: "Accepted")
    @declined_bookings = Booking.where(user_id: @user, status: "Declined")
  end
>>>>>>> fe17c28a6a237bf65280e6fbab9ee00be4de8044

  def accept_booking
    @booking.update(status: "Accepted")
    redirect_to seeker_bookings_path(@booking.user)
  end

  def decline_booking
    @booking.update(status: "Declined")
    redirect_to seeker_bookings_path(@booking.user)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
