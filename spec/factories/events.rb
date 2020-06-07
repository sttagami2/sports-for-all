FactoryBot.define do
  factory :event do
    user_id { FactoryBot.create(:user).id }
    type_id { 1 }
    event_name { "#{Takarabako.open}イベント" }
    introduction { Faker::Lorem.characters(number: 30) }
    start_date { Date.tomorrow }
    finish_date { Date.tomorrow + 1 }
    place_name { Gimei.town.kanji }
    address { Gimei.address.kanji }
  end
end
