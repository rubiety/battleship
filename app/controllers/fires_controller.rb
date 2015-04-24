class FiresController < ApplicationController
  def create
    @game = Game.find(params[:game_id])
    @game.fire(params[:x].to_i, params[:y].to_i)
    redirect_to @game
  end
end
