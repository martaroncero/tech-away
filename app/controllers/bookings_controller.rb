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
    @booking_order = Booking.order(created_at: :desc)
  end

  def accept_booking
    if @booking.status == "Pending"
      # accept the booking
      @booking.update(status: "Accepted")

      # get the category and seeker pertaining the booking
      booking_category = @booking.product.category
      seeker = @booking.user

      # set the corresponding request as complete
      user_request = seeker.requests.find_by(category: booking_category)
      user_request.update(status: "Completed")

      # get all the other bookings that relate to the request and set them as declined
      other_bookings = Booking.joins(:product).where( user: seeker,
                                                      status: "Pending",
                                                      products: { category: booking_category }
                                                    )
      other_bookings.each{ |booking| booking.update(status: "Declined")}
    end
    redirect_to charity_path(@booking.charity, tab: 2)
  end

  def decline_booking
    if @booking.status == "Pending"
      @booking.update(status: "Declined")
    end
    redirect_to charity_path(@booking.charity, tab: 2)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
