class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :team_details, dependent: :destroy
end
