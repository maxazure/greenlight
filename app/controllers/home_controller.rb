class HomeController < ApplicationController
  def index
    @gifdays = Gifday.all
  end

  def detail
    @gifday = Gifday.find(params[:id])
  end
end
