FactoryBot.define do
  factory :notification do
    visitor { nil }
    visited { nil }
    event { nil }
    comment { nil }
    action { "MyString" }
    checked { false }
  end
end
