class CharitiesController < ApplicationController

  def index
    @charity = Charity.all
  end

  def show
    @user = User.new
    @charity = Charity.find(params[:id])
    @booking = Booking.find(params[:id])
    @charity_bookings = @charity.bookings
    @our_seekers = User.where(charity: @charity, kind: "Seeker")
  end

  private

  def request_params
    params.require(:charity)
  end
end
