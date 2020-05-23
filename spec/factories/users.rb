FactoryBot.define do
  factory :user, aliases: [:owner] do
    name {"田中太郎"}
    sequence(:email) {|n| "tester#{n}@example.com"}
    introduction {Faker::Lorem.characters(number:30)}
    password {"123456"}
    password_confirmation {"123456"}

  end
  
  factory :other_user, class: "User" do
    name {"田口宏"}
    sequence(:email) {|n| "other#{n}@example.com"}
    introduction {Faker::Lorem.characters(number:30)}
    password {"password"}
    password_confirmation {"password"}

  end
end
