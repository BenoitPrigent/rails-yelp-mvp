class ReviewsController < ApplicationController

  # def index
  #   @restaurant = Restaurant.find(params[:restauraut_id])
  #   @reviews = Review.where(restaurant_id: params[:restauraut_id])
  # end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end


  def create
    # instanciate new review

    # find the restaurant related
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    # associate reviews and restaurants
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant.id)
    else
      render :new
    end
  end


  private

  def review_params
    params.require(:review).permit(:rating, :content, :restaurant_id)
  end

end
