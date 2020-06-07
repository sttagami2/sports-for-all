FactoryBot.define do
  factory :chat do
    association :room
    association :user
    content { Faker::Lorem.characters(number: 30) }
  end
end
