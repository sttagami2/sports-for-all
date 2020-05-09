class Event < ApplicationRecord
  has_many :participation
  has_many :comment
  has_many :team
  has_many :game
  belongs_to :type

  attachment :image
end
