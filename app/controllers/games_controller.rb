class GamesController < ApplicationController
  def index
  end

  def show
    @game = Game.find_by_id!(params[:id])
  end

end
