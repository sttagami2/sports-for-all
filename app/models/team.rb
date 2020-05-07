class Team < ApplicationRecord
  has_many :participation
  has_many :game
end
