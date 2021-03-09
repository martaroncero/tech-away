class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :donate]

  def home
    # gets the most needed requests as an array of hashes (stats)
    count_hashes = Request.count_per_category
    # transforms this into an array of hashes
    @top_requests = Request.stringify_count(count_hashes)
    # amount of total requests
    @request_count = Request.count
    @charity = Charity.all
  end

  def about
  end

  def donate
  end

end
