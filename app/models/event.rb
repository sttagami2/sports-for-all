class Event < ApplicationRecord
  has_many :participation
  has_many :comment
  has_many :teams
  has_many :games
  belongs_to :type

  attachment :image
end
