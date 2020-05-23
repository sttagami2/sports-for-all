class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :team_details, dependent: :destroy

  validates :user_id, presence: true
  validates :event_id, presence: true
  validates :status, presence: true
end
