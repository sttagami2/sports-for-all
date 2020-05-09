class Team < ApplicationRecord
  belongs_to :event
  has_many :game_detail
  has_many :team_detail
end
