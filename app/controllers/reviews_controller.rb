class ReviewsController < ApplicationController

  def create
    @review = Review.new
    Review.create(review_params)
  end

  private
  def review_params
    params.require(:review).permit(:text).merge(user_id: current_user.id, game_id: params[:game_id])
  end
end
