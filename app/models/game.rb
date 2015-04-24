class Game < ActiveRecord::Base
  has_many :ships, dependent: :destroy
  has_many :rounds, dependent: :destroy
  has_many :fires, through: :rounds

  after_create :create_ships

  SIZE = 16

  def fire(x, y)
    current_round.fires.create(x: x, y: y)
  end

  def completed?
    fires.count >= 30
  end

  def fire_at?(x, y)
    fires.where(x: x, y: y).exists?
  end

  def hit_at?(x, y)
    fires.where("rounds.fires_count >= 5").where(hit: true).exists?
  end

  def ship_at?(x, y)
    ship_coordinates.any? do |coords|
      coords[0] == x and coords[1] == y
    end
  end

  def current_round
    rounds.pending.last or rounds.create
  end

  def ship_coordinates
    ships.map(&:coordinates).flatten(1)
  end

  def create_ships
    Ship::TYPES.each do |name, values|
      ship = nil

      begin
        start_at = [(1..Game::SIZE).to_a.sample, (1..Game::SIZE).to_a.sample]

        if rand > 0.5
          end_at = [start_at[0], start_at[1] + values[:size] - 1]
        else
          end_at = [start_at[0] + values[:size] - 1, start_at[1]]
        end

        ship = Ship.new(
          start_x: start_at[0],
          start_y: start_at[1],
          end_x: end_at[0],
          end_y: end_at[1],
        )

        ship.game = self
      end while !ship.valid?

      ship.save!
    end

    ships.reload
  end
end
