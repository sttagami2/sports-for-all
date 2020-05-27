require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"events"のデータを作成します'

10.times do
  gimei = Gimei.new

  Event.create!(
    user_id: 1,
    type_id: rand(1..8).to_i,
    event_name: "#{Takarabako.open}イベント",
    introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
    start_date: '2020-06-01',
    finish_date: '2020-06-01',
    place_name: gimei.town.kanji,
    address: gimei.address.kanji,
  )
end