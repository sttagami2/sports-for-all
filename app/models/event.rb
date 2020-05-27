class Event < ApplicationRecord
  belongs_to :user
  
  has_many :participations, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :teams, dependent: :destroy
  has_many :games, dependent: :destroy
  has_many :event_types, dependent: :destroy
  has_many :types, through: :event_types

  mount_uploader :image, ImagesUploader

  validates :type_id, presence: true
  validates :event_name, presence: true
  validates :introduction, presence: true
  validates :start_date, presence: true
  validates :finish_date, presence: true
  validates :place_name, presence: true
  validates :address, presence: true

  
  def start_time
    self.start_date
  end

end
