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
  end

  def update
  end

  def show
  end

  private
  def game_params
    params.require(:game).permit(:title, :content, :image).merge(user_id: current_user.id)
  end
end
