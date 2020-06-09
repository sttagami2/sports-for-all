class Event < ApplicationRecord
  belongs_to :user

  has_many :participations, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :teams, dependent: :destroy
  has_many :games, dependent: :destroy
  has_many :event_types, dependent: :destroy
  has_many :types, through: :event_types
  
  # 通知機能
  has_many :notifications, dependent: :destroy

  mount_uploader :image, ImagesUploader

  validates :type_id, presence: true
  validates :event_name, presence: true
  validates :introduction, presence: true
  validates :start_date, presence: true
  validates :finish_date, presence: true
  validates :place_name, presence: true
  validates :address, presence: true

  def start_time
    start_date
  end

  # コメントの通知機能
  def create_notification_comment!(current_user, comment_id)
    # 自分以外にコメントしている人をすべて取得し、全員に通知を送る
    temp_ids = Comment.select(:user_id).where(event_id: id).where.not(user_id: current_user.id).distinct
    temp_ids.each do |temp_id|
      save_notification_comment!(current_user, comment_id, temp_id['user_id'])
    end
    # まだ誰もコメントしていない場合は、投稿者に通知を送る
    save_notification_comment!(current_user, comment_id, user_id) if temp_ids.blank?
  end

  def save_notification_comment!(current_user, comment_id, visited_id)
    # コメントは複数回することが考えられるため、１つの投稿に複数回通知する
    notification = current_user.active_notifications.new(
      event_id: id,
      comment_id: comment_id,
      visited_id: visited_id,
      action: 'comment'
    )
    # 自分の投稿に対するコメントの場合は、通知済みとする
    if notification.visitor_id == notification.visited_id
      notification.checked = true
    end
    notification.save if notification.valid?
  end
end
