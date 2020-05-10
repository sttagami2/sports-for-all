require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"games"のデータを作成します'


5.times do
  Game.create!(
    event_id: 1,
    win_id: 1,
    lose_id: 2,
    score1: 25,
    score2: rand(10..24).to_s,
  )
end
5.times do
  Game.create!(
    event_id: 1,
    win_id: 1,
    lose_id: 3,
    score1: 25,
    score2: rand(10..24).to_s,
  )
end