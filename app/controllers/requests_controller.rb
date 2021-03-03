class RequestsController < ApplicationController

  def create
    @request = Request.new(request_params)
    seeker = User.find(params[:id])
    @request.user = seeker
  
    if @request.save
      redirect_to seeker_path(seeker)
    else
      respond_to do |format|
        format.js { render 'requests/form/form_reload.js.erb' }
      end
    end
  end

  private

  def request_params
    params.require(:request).permit(:category_id)
  end
end
