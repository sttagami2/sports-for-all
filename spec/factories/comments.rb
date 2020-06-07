FactoryBot.define do
  factory :comment do
    factory :note_comment do
      association :users
      association :events
      comment { Faker::Lorem.characters(number: 30) }
    end
  end
end
