class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event

  # 通知機能
  has_many :notifications, dependent: :destroy

  validates :user_id, presence: true
  validates :event_id, presence: true
  validates :comment, presence: true
end
