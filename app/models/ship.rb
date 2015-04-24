class Ship < ActiveRecord::Base
  belongs_to :game

  TYPES = {
    "Aircraft Carrier" => { size: 5, points: 20 },
    "Battleship" => { size: 4, points: 12 },
    "Submarine" => { size: 3, points: 6 },
    "Destroyer" => { size: 3, points: 6 },
    "Crusier" => { size: 3, points: 6 },
    "Patrol Boat" => { size: 2, points: 2 }
  }

  validate :ensure_y_less_than_x, on: :create
  validate :ensure_in_bounds_and_uncollided, on: :create

  def coordinates
    (start_x..end_x).to_a.map do |x|
      (start_y..end_y).to_a.map do |y|
        [x, y]
      end
    end.flatten(1)
  end

  def ensure_y_less_than_x
    errors[:base] << "Start x is less than end x" if start_x > end_x
    errors[:base] << "End y is less than end y" if start_y > end_y
  end

  def ensure_in_bounds_and_uncollided
    unless in_bounds? and uncollided?
      errors[:base] << "Out of bounds"
    end
  end

  def in_bounds?
    coordinates.all? do |pair|
      (1..Game::SIZE).include?(pair[0]) and (1..Game::SIZE).include?(pair[1])
    end
  end

  def uncollided?
    !coordinates.any? do |pair|
      game.ship_coordinates.include?(pair)
    end
  end
end
