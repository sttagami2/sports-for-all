class Team < ApplicationRecord
  belongs_to :event
  has_many :game_details, dependent: :destroy
  has_many :team_details, dependent: :destroy

  validates :name, presence: true
end
