class ReviewsController < ApplicationController

  def create
    @game = Game.find(params[:game_id])
    @review = @game.reviews.new(review_params)
    @review.save
    respond_to do |format|
      format.html { redirect_to game_path(params[:game_id]) }
      format.json
    end
  end

  private
  def review_params
    params.require(:review).permit(:text).merge(user_id: current_user.id, game_id: params[:game_id])
  end
end
