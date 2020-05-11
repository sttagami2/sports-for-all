class Event < ApplicationRecord
  has_many :participations
  has_many :comments
  has_many :teams
  has_many :games
  belongs_to :type

  attachment :image
end
