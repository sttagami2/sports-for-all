class Game < ApplicationRecord
  belongs_to :event
  has_many :team
  has_many :participation
  has_many :resolute
end
