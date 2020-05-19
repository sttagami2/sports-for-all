require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"games"のデータを作成します'


# 5.times do
#   Game.create!(
#     event_id: 1,
#     win_id: 1,
#     lose_id: 2,
#     win_score: 25,
#     lose_score: rand(10..24).to_s,
#   )
# end
# 5.times do
#   Game.create!(
#     event_id: 1,
#     win_id: 1,
#     lose_id: 3,
#     win_score: 25,
#     lose_score: rand(10..24).to_s,
#   )
# end