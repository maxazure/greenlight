class HomeController < ApplicationController
  def index
    @gifdays = Gifday.all
    @pageparameter =  Pageparameter.find(1)
  end

  def detail
    @gifday = Gifday.find(params[:id])
    @pageparameter =  Pageparameter.find(1)
  end
end
