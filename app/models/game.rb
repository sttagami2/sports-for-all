class Game < ApplicationRecord
  belongs_to :event
  belongs_to :team
  has_many :resolute
end
