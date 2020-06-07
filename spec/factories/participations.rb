FactoryBot.define do
  factory :participation do
    association :user
    association :event
    status { "参加" }
  end
end
