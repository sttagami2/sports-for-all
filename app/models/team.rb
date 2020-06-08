class Team < ApplicationRecord
  belongs_to :event
  has_many :game_details, dependent: :destroy
  has_many :team_details, dependent: :destroy

  validates :name, presence: true


  def self.team_detail(event_id)
    self.where(event_id: event_id).order("created_at DESC")
  end
end
