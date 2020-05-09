class Game < ApplicationRecord
  belongs_to :event
  has_many :game_detail
  has_many :resolute
end
