class GameDetail < ApplicationRecord
  has_many :team
  has_many :game
end
