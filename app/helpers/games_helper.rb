module GamesHelper
  def cell_status(x, y)
    if @game.completed?
      [("hit" if @game.hit_at?(x, y)), ("ship" if @game.ship_at?(x, y))].compact.join(" ")
    else
      "hit" if @game.hit_at?(x, y)
    end
  end
end
