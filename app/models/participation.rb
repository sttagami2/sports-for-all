class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :event
  belongs_to :game

  enum status: { 参加: 0, 未定: 1, 不参加: 2}
end
