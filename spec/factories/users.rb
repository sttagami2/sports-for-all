FactoryBot.define do
  factory :user, aliases: [:owner] do
    name {"田中太郎"}
    name_k {"たなかたろう"}
    sequence(:email) {|n| "tester#{n}@example.com"}
    introduction {Faker::Lorem.characters(number:30)}
    password {"123456"}
    password_confirmation {"123456"}
    age {24}
    phone_number {"08099991111"}
    image {File.open('app/assets/images/sissors.png')}
  end
  
  factory :other_user, class: "User" do
    name {"田口宏"}
    name_k {"たぐちひろし"}
    sequence(:email) {|n| "other#{n}@example.com"}
    introduction {Faker::Lorem.characters(number:30)}
    password {"password"}
    password_confirmation {"password"}
    age {25}
    phone_number {"09011119999"}
    image {File.open('app/assets/images/sissors.png')}
  end
end
