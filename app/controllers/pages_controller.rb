class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :donate]

  def home
  end

  def about
  end

  def donate
  end

end
