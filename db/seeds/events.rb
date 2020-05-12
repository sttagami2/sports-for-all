require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"events"のデータを作成します'

10.times do
  gimei = Gimei.new

  Event.create!(
    type_id: rand(1..8).to_s,
    event_name: "わいわいガヤガヤ",
    introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
    date: "2020/05/01",
    place_name: gimei.town.kanji,
    address: gimei.address.kanji,
  )
end