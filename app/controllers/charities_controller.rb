class CharitiesController < ApplicationController

 def index
   @charity = Charity.all
  end

  def show
    @user = User.all
    @request = Request.find(params[:id])
    @user_id = User.find(params[:id])
    @charity = Charity.find(params[:id])
    @seekers = @user.all.select{ |user| user.kind == "Seeker" }
    @our_seekers = @charity.users.select{ |user| user.kind == "Seeker" }
    @requests = @charity.requests
    @pending_offers = @charity.bookings.where(user_id: @user, status: "Pending")
    @accepted_offers = @charity.bookings.where(user_id: @user, status: "Accepted")
    @declined_offers = @charity.bookings.where(user_id: @user, status: "Declined")
  end


private

  def request_params
    params.require(:charity)
  end

end
