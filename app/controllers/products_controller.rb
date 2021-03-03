class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update]

  def show
    @booking = Booking.new
    @product = Product.find(params[:id])

    if @product.geocoded?
      @marker = {
                  lat: @product.latitude,
                  lng: @product.longitude
                }
    end
  end

  def index
     @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    @product.status = "Pending"
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end


  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render :edit
    end
  end


    private

    def product_params
      params.require(:product).permit(:title, :description, :status, :condition, :category_id, :address)
      
    end

    def set_product
      @product = Product.find(params[:id])
    end
end
