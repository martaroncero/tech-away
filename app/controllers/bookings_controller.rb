class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.product = @product
    @booking.user = current_user
  end
end
