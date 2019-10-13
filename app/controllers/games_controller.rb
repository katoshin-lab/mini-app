class GamesController < ApplicationController
  def index
    @games = Game.includes(:user)
  end

  def new
    @game = Game.new
  end

  def create
    Game.create(game_params)
    redirect_to root_path
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    game = Game.find(params[:id])
    game.update(game_params) if current_user.id == game.user_id
  end

  def show
    @game = Game.find(params[:id])
    @review = Review.new
    @reviews = @game.reviews.includes(:user)
  end

  def destroy
    game = Game.find(params[:id])
    game.destroy if current_user.id == game.user_id
  end

  private
  def game_params
    params.require(:game).permit(:title, :content, :image).merge(user_id: current_user.id)
  end
end
