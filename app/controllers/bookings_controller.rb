class BookingsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @booking = Booking.new(booking_params)
    @booking.product = @product
    @booking.user = User.where(charity: current_user.charity, kind: "Seeker")
    @booking.charity = current_user.charity
    @booking.save
    redirect_to bookings_path
  end

  def booking_params
    params.require(:booking).permit(:status)
  end
end
