class TeamDetail < ApplicationRecord
  belongs_to :team
  belongs_to :participation
end
