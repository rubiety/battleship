class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.new
    redirect_to @game
  end
end
