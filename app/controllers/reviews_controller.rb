class ReviewsController < ApplicationController

  # def index
  #   @restaurant = Restaurant.find(params[:restauraut_id])
  #   @reviews = Review.where(restaurant_id: params[:restauraut_id])
  # end

  def create

  end


  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

end
