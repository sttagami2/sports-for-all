class Event < ApplicationRecord
  has_many :participations
  has_many :comments
  has_many :teams
  has_many :games
  has_many :event_types, dependent: :destroy
  has_many :types, through: :event_types

  attachment :image

  
  def start_time
    self.start_date
  end

end
