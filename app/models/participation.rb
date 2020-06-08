class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :team_details, dependent: :destroy

  validates :user_id, presence: true
  validates :event_id, presence: true
  validates :status, presence: true


  # イベントに参加している人を取得
  def self.participation_index(event_id)
    self.where('event_id=? and status=?', event_id, "参加")
  end
end
