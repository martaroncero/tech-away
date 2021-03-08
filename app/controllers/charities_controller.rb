class CharitiesController < ApplicationController
  def index
    @charity = Charity.all
  end

  def filter
    @seeker = @user.select(kind: "Seeker")
    @our_seeker = @seeker.select { |seeker| seeker.id == @charity.id }
    @request = @request.select { |request| request.id == @charity.id }
  end

  def show
    @charity = Charity.find(params[:id])
    @seeker
    @our_seeker
    @request
  end

  def request_params
    params.require(:charity)
  end

end
