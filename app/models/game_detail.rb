class GameDetail < ApplicationRecord
  has_many :teams, dependent: :destroy
  has_many :games, dependent: :destroy
end
