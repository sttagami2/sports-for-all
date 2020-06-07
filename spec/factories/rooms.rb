FactoryBot.define do
  factory :room do
    name { Gimei.name.kanji }
  end
end
