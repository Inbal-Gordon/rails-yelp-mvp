class ApplicationController < ActionController::Base
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.ew
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

    private

    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :category, :reviews)
    end
  
end
