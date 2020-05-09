require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"locations"のデータを作成します'

10.times do
  gimei = Gimei.new
  
  Location.create!(
    user_id: 1,
    name: gimei.town.kanji,
    postcode: Faker::Address.postcode,
    address: gimei.address.kanji,
  )
end