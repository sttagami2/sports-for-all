class Game < ApplicationRecord
  belongs_to :event
  has_many :game_details
  has_many :resolutes

end
