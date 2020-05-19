class GameDetail < ApplicationRecord
  belongs_to :team, dependent: :destroy
  belongs_to :game, dependent: :destroy
end
