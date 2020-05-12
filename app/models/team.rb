class Team < ApplicationRecord
  belongs_to :event
  has_many :game_details
  has_many :team_details
end
