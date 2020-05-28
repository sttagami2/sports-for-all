class Game < ApplicationRecord
  belongs_to :event
  has_many :game_details, dependent: :destroy
  has_many :resolutes, dependent: :destroy

  validates :event_id, presence: true
  validates :win_id, presence: true
  validates :lose_id, presence: true
  validate :score_custom_validation

  def score_custom_validation
    errors.add(:win_score, "他チームと異なる値を入力して下さい") if win_score == lose_score
  end
end
