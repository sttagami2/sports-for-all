class Game < ApplicationRecord
  belongs_to :event
  has_many :game_details, dependent: :destroy
  has_many :resolutes, dependent: :destroy

  validates :event_id, presence: true
  validates :win_id, presence: true
  validates :lose_id, presence: true
  validates :win_score, presence: true
  validates :lose_score, presence: true
end
