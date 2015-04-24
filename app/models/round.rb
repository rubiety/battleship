class Round < ActiveRecord::Base
  belongs_to :game, counter_cache: true
  has_many :fires
end
