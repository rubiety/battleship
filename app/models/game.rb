class Game < ActiveRecord::Base
  has_many :ships
  has_many :rounds
end
