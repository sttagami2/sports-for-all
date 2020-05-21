class Game < ApplicationRecord
  belongs_to :event
  has_many :game_details, dependent: :destroy
  has_many :resolutes, dependent: :destroy

end
