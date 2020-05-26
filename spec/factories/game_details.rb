FactoryBot.define do
  factory :game_detail do
    association :games
    association :teams
  end
end
