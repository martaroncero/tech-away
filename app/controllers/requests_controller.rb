class RequestsController < ApplicationController

  def create
    @request = Request.new(request_params) 
    @request.user = User.find(params[:id])

    if @request.save
      redirect_to seeker_path(user)
    else
      respond_to do |format|
        format.js { render 'requests/form/form_reload.js.erb' }
      end
    end
  end

  private

  def request_params
    params.require(:request).permit(:category)
  end
end
