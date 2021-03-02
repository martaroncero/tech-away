class BookingsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @booking = Booking.new(booking_params)
    @booking.product = @product
    @booking.user = current_user
    @booking.charity = current_user.charity
    @booking.save
    redirect_to bookings_path
  end

  def booking_params
    params.require(:booking).permit(:status)
  end
end
