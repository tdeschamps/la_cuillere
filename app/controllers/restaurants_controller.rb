class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant_params = params.require(:restaurant).permit(:title, :photo_url, :city, :zipcode, :adress, :type)
    restaurant = Restaurant.create(@restaurant_params)
    redirect_to restaurant_path(restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end


end
