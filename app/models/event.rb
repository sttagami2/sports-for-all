class Event < ApplicationRecord
  has_many :participation
  has_many :comment
  belongs_to :location
  belongs_to :type
end
