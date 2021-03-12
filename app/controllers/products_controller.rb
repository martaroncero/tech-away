class ProductsController < ApplicationController
  before_action :set_product, only: [ :show, :edit, :update, :mark_as_complete ]
  before_action :set_request, only: [ :new, :create ]

  def show
    @booking = Booking.new
    @product = Product.find(params[:id])
    @seekers = User.where(kind: "Seeker")

    if @product.geocoded?
      @marker = {
                  lat: @product.latitude,
                  lng: @product.longitude
                }
    end
  end

  def index
    @query = params[:query]

    if @query.present?
      @products = Product.global_search(@query)
    else
      @products = Product.all
    end
  end

  def new
    @product = Product.new

    if params[:request_id].present?
      @product.category = @request.category
    end
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    @product.status = "Pending"

    if @request
      @product.category = @request.category
    end
    
    if @product.save
      flash_message = "Product was successfully created"

      if @request
        Booking.create!(charity: @request.user.charity,
                      user: @request.user,
                      status: "Pending",
                      product: @product
        )
        flash_message = "Product and offer was successfully created"
      end

      redirect_to product_path(@product), notice: flash_message
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
    params.require(:product).permit(:title, :description, :status, :condition, :category_id, :address, :photo)
  end
    
  def set_product
    @product = Product.find(params[:id])
  end

  def set_request
    if params[:request_id].present?
      @request = Request.find(params[:request_id])
    end
  end
end
