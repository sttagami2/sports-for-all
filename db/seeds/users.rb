require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"users"のデータを作成します'

50.times do
  gimei = Gimei.new
  
  User.create!(
    name: gimei.name.kanji,
    name_k: gimei.name.hiragana,
    image: File.open('app/assets/images/sissors.png'),
    introduction: "#{gimei.name.kanji}です。よろしくお願いします！",
    phone_number: "08000001111",
    age: rand(16..40).to_i,
    email: Faker::Internet.email,
    password: "111111",
    games: 0,
    wins: 0,
  )
end