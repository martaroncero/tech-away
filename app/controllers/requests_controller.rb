class RequestsController < ApplicationController

  def create
    @request = Request.new(request_params)
    @user = User.find(params[:id])
    @request.user = @user
  
    if @request.save
      redirect_to seeker_path(@user)
    else
      respond_to do |format|
        format.js { render 'requests/form/form_reload.js.erb' }
      end
    end
  end

  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])
    @user = @request.user
  end

  private

  def request_params
    params.require(:request).permit(:category_id)
  end
end
