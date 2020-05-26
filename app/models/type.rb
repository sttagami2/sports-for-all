class Type < ApplicationRecord
  has_many :event_types, dependent: :destroy
  has_many :events, through: :event_types

  validates :name, presence: true
end
