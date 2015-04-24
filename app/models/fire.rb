class Fire < ActiveRecord::Base
  belongs_to :round, counter_cache: true
end
