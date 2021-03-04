class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :donate]

  def home
    @requests_count = Request.count_per_category(1)
    raise
  end

  def about
  end

  def donate
  end

end
