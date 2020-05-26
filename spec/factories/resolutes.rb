FactoryBot.define do
  factory :resolute do
    association :user
    association :game
  end
end
