class Round < ActiveRecord::Base
  belongs_to :game, counter_cache: true
  has_many :fires, dependent: :destroy

  acts_as_list scope: :game

  scope :completed, -> { where("fires_count >= 5") }
  scope :pending, -> { where("fires_count < 5") }

end
