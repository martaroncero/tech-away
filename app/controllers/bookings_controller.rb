class BookingsController < ApplicationController
 
  def index
    @user = current_user
    @bookings = @user.bookings.where(charity_id: @user.charity_id)
    raise
  end
    
end
