class ReviewsController < ApplicationController

  def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end


  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end

  #   assigns a new review as @review (FAILED - 9)
  # POST create
  #   with valid params
  #     creates a new Review (FAILED - 10)
  #     assigns a newly created review as @review (FAILED - 11)
  #     redirects to the parent restaurant (FAILED - 12)
  #   with invalid params
  #     assigns a newly created but unsaved review as @review (FAILED - 13)
  #     re-renders the 'new' template (FAILED - 14)
