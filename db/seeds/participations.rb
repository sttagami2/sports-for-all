require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"participations"のデータを作成します'


Participation.create!(
  user_id: 1,
  event_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 2,
  event_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 3,
  event_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 4,
  event_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 5,
  event_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 6,
  event_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 7,
  event_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 8,
  event_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 9,
  event_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 10,
  event_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 11,
  event_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 12,
  event_id: 1,
  status: 0,
)