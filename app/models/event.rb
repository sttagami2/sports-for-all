class Event < ApplicationRecord
  has_many :participations, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :teams, dependent: :destroy
  has_many :games, dependent: :destroy
  has_many :event_types, dependent: :destroy
  has_many :types, through: :event_types

  attachment :image

  
  def start_time
    self.start_date
  end

end
