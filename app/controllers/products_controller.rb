class ProductsController < ApplicationController
  def show
    @booking = Booking.new
    @product = Product.find(params[:id])
  end

  def index
     @product = Product.all
  end

end
