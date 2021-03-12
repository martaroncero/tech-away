class RequestsController < ApplicationController

  def create
    @request = Request.new(request_params)
    @user = User.find(params[:id])
    @request.user = @user
  
    if @request.save
      redirect_to seeker_path(@user), notice: "Request was successfully created"
    else
      respond_to do |format|
        format.js { render 'requests/form/form_reload.js.erb' }
      end
    end
  end

  def index
    @requests = Request.where(status: "Pending")
  end

  private

  def request_params
    params.require(:request).permit(:category_id, :description)
  end
end
