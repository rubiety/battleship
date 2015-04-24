class Fire < ActiveRecord::Base
  belongs_to :round, counter_cache: true

  delegate :game, to: :round

  after_create :determine_hit


  protected

  def determine_hit
    update_column :hit, game.ship_at?(x, y)
    true
  end
end
