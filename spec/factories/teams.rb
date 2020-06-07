FactoryBot.define do
  factory :team do
    association :event
    name { "#{Takarabako.open}" }
  end
end
