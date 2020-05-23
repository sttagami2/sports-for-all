FactoryBot.define do
  factory :team_detail do
    association :team
    association :participation
  end
end
