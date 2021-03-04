class BookingsController < ApplicationController

  before_action :set_booking, only: [ :mark_as_archived, :mark_as_complete ]
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

  def mark_as_complete
    @booking.update( status: "Complete" )
    redirect_to bookings_path
  end

  def mark_as_archived
    @booking.update( status: "Archived" )
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
