module GamesHelper
  def cell_status(x, y)
    if @game.completed?
      # [("hit" if @game.hit_at?(x, y)), ("ship" if @game.ship_at?(x, y))].compact.join(" ")
      if @game.hit_at?(x,y)
        "hit"
      elsif @game.hit_at?(x,y) && @game.ship_at?(x,y)
        "hit_ship"
      elsif @game.ship_at?(x,y)
        "ship"
      end
    else
      # "hit" if @game.hit_at?(x, y)
      if @game.hit_at?(x, y)
        "hit"
      elsif @game.ship_at?(x,y)
        "ship"
      end
    end
  end
end
