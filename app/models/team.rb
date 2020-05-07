class Team < ApplicationRecord
  belongs_to :participation
  has_many :game
end
