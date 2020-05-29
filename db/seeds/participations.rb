require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"participations"のデータを作成します'


Participation.create!(
  user_id: 1,
  event_id: 1,
  status: "参加",
)
Participation.create!(
  user_id: 2,
  event_id: 1,
  status: "参加",
)
Participation.create!(
  user_id: 3,
  event_id: 1,
  status: "参加",
)
Participation.create!(
  user_id: 4,
  event_id: 1,
  status: "参加",
)
Participation.create!(
  user_id: 5,
  event_id: 1,
  status: "参加",
)
Participation.create!(
  user_id: 6,
  event_id: 1,
  status: "参加",
)
Participation.create!(
  user_id: 7,
  event_id: 1,
  status: "参加",
)
Participation.create!(
  user_id: 8,
  event_id: 1,
  status: "参加",
)
Participation.create!(
  user_id: 9,
  event_id: 1,
  status: "参加",
)
Participation.create!(
  user_id: 10,
  event_id: 1,
  status: "参加",
)
Participation.create!(
  user_id: 11,
  event_id: 1,
  status: "参加",
)
Participation.create!(
  user_id: 12,
  event_id: 1,
  status: "参加",
)
Participation.create!(
  user_id: 13,
  event_id: 1,
  status: "参加",
)
Participation.create!(
  user_id: 14,
  event_id: 1,
  status: "参加",
)
Participation.create!(
  user_id: 1,
  event_id: 2,
  status: "参加",
)
Participation.create!(
  user_id: 2,
  event_id: 2,
  status: "参加",
)
Participation.create!(
  user_id: 3,
  event_id: 2,
  status: "参加",
)
Participation.create!(
  user_id: 4,
  event_id: 2,
  status: "参加",
)
Participation.create!(
  user_id: 5,
  event_id: 2,
  status: "参加",
)
Participation.create!(
  user_id: 6,
  event_id: 2,
  status: "参加",
)
Participation.create!(
  user_id: 7,
  event_id: 2,
  status: "参加",
)
Participation.create!(
  user_id: 8,
  event_id: 2,
  status: "参加",
)
Participation.create!(
  user_id: 9,
  event_id: 2,
  status: "参加",
)
Participation.create!(
  user_id: 10,
  event_id: 2,
  status: "参加",
)
Participation.create!(
  user_id: 11,
  event_id: 2,
  status: "参加",
)
Participation.create!(
  user_id: 12,
  event_id: 2,
  status: "参加",
)
Participation.create!(
  user_id: 13,
  event_id: 2,
  status: "参加",
)
Participation.create!(
  user_id: 14,
  event_id: 2,
  status: "参加",
)
Participation.create!(
  user_id: 1,
  event_id: 3,
  status: "参加",
)
Participation.create!(
  user_id: 2,
  event_id: 3,
  status: "参加",
)
Participation.create!(
  user_id: 3,
  event_id: 3,
  status: "参加",
)
Participation.create!(
  user_id: 4,
  event_id: 3,
  status: "参加",
)
Participation.create!(
  user_id: 5,
  event_id: 3,
  status: "参加",
)
Participation.create!(
  user_id: 6,
  event_id: 3,
  status: "参加",
)
Participation.create!(
  user_id: 7,
  event_id: 3,
  status: "参加",
)
Participation.create!(
  user_id: 8,
  event_id: 3,
  status: "参加",
)
Participation.create!(
  user_id: 9,
  event_id: 3,
  status: "参加",
)
Participation.create!(
  user_id: 10,
  event_id: 3,
  status: "参加",
)
Participation.create!(
  user_id: 11,
  event_id: 3,
  status: "参加",
)
Participation.create!(
  user_id: 12,
  event_id: 3,
  status: "参加",
)
Participation.create!(
  user_id: 13,
  event_id: 3,
  status: "参加",
)
Participation.create!(
  user_id: 14,
  event_id: 3,
  status: "参加",
)
Participation.create!(
  user_id: 1,
  event_id: 4,
  status: "参加",
)
Participation.create!(
  user_id: 2,
  event_id: 4,
  status: "参加",
)
Participation.create!(
  user_id: 3,
  event_id: 4,
  status: "参加",
)
Participation.create!(
  user_id: 4,
  event_id: 4,
  status: "参加",
)
Participation.create!(
  user_id: 5,
  event_id: 4,
  status: "参加",
)
Participation.create!(
  user_id: 6,
  event_id: 4,
  status: "参加",
)
Participation.create!(
  user_id: 7,
  event_id: 4,
  status: "参加",
)
Participation.create!(
  user_id: 8,
  event_id: 4,
  status: "参加",
)
Participation.create!(
  user_id: 9,
  event_id: 4,
  status: "参加",
)
Participation.create!(
  user_id: 10,
  event_id: 4,
  status: "参加",
)
Participation.create!(
  user_id: 11,
  event_id: 4,
  status: "参加",
)
Participation.create!(
  user_id: 12,
  event_id: 4,
  status: "参加",
)
Participation.create!(
  user_id: 13,
  event_id: 4,
  status: "参加",
)
Participation.create!(
  user_id: 14,
  event_id: 4,
  status: "参加",
)
Participation.create!(
  user_id: 1,
  event_id: 5,
  status: "参加",
)
Participation.create!(
  user_id: 2,
  event_id: 5,
  status: "参加",
)
Participation.create!(
  user_id: 3,
  event_id: 5,
  status: "参加",
)
Participation.create!(
  user_id: 4,
  event_id: 5,
  status: "参加",
)
Participation.create!(
  user_id: 5,
  event_id: 5,
  status: "参加",
)
Participation.create!(
  user_id: 6,
  event_id: 5,
  status: "参加",
)
Participation.create!(
  user_id: 7,
  event_id: 5,
  status: "参加",
)
Participation.create!(
  user_id: 8,
  event_id: 5,
  status: "参加",
)
Participation.create!(
  user_id: 9,
  event_id: 5,
  status: "参加",
)
Participation.create!(
  user_id: 10,
  event_id: 5,
  status: "参加",
)
Participation.create!(
  user_id: 11,
  event_id: 5,
  status: "参加",
)
Participation.create!(
  user_id: 12,
  event_id: 5,
  status: "参加",
)
Participation.create!(
  user_id: 13,
  event_id: 5,
  status: "参加",
)
Participation.create!(
  user_id: 14,
  event_id: 5,
  status: "参加",
)
Participation.create!(
  user_id: 1,
  event_id: 6,
  status: "参加",
)
Participation.create!(
  user_id: 2,
  event_id: 6,
  status: "参加",
)
Participation.create!(
  user_id: 3,
  event_id: 6,
  status: "参加",
)
Participation.create!(
  user_id: 4,
  event_id: 6,
  status: "参加",
)
Participation.create!(
  user_id: 5,
  event_id: 6,
  status: "参加",
)
Participation.create!(
  user_id: 6,
  event_id: 6,
  status: "参加",
)
Participation.create!(
  user_id: 7,
  event_id: 6,
  status: "参加",
)
Participation.create!(
  user_id: 8,
  event_id: 6,
  status: "参加",
)
Participation.create!(
  user_id: 9,
  event_id: 6,
  status: "参加",
)
Participation.create!(
  user_id: 10,
  event_id: 6,
  status: "参加",
)
Participation.create!(
  user_id: 11,
  event_id: 6,
  status: "参加",
)
Participation.create!(
  user_id: 12,
  event_id: 6,
  status: "参加",
)
Participation.create!(
  user_id: 13,
  event_id: 6,
  status: "参加",
)
Participation.create!(
  user_id: 14,
  event_id: 6,
  status: "参加",
)
Participation.create!(
  user_id: 1,
  event_id: 7,
  status: "参加",
)
Participation.create!(
  user_id: 2,
  event_id: 7,
  status: "参加",
)
Participation.create!(
  user_id: 3,
  event_id: 7,
  status: "参加",
)
Participation.create!(
  user_id: 4,
  event_id: 7,
  status: "参加",
)
Participation.create!(
  user_id: 5,
  event_id: 7,
  status: "参加",
)
Participation.create!(
  user_id: 6,
  event_id: 7,
  status: "参加",
)
Participation.create!(
  user_id: 7,
  event_id: 7,
  status: "参加",
)
Participation.create!(
  user_id: 8,
  event_id: 7,
  status: "参加",
)
Participation.create!(
  user_id: 9,
  event_id: 7,
  status: "参加",
)
Participation.create!(
  user_id: 10,
  event_id: 7,
  status: "参加",
)
Participation.create!(
  user_id: 11,
  event_id: 7,
  status: "参加",
)
Participation.create!(
  user_id: 12,
  event_id: 7,
  status: "参加",
)
Participation.create!(
  user_id: 13,
  event_id: 7,
  status: "参加",
)
Participation.create!(
  user_id: 14,
  event_id: 7,
  status: "参加",
)
Participation.create!(
  user_id: 1,
  event_id: 8,
  status: "参加",
)
Participation.create!(
  user_id: 2,
  event_id: 8,
  status: "参加",
)
Participation.create!(
  user_id: 3,
  event_id: 8,
  status: "参加",
)
Participation.create!(
  user_id: 4,
  event_id: 8,
  status: "参加",
)
Participation.create!(
  user_id: 5,
  event_id: 8,
  status: "参加",
)
Participation.create!(
  user_id: 6,
  event_id: 8,
  status: "参加",
)
Participation.create!(
  user_id: 7,
  event_id: 8,
  status: "参加",
)
Participation.create!(
  user_id: 8,
  event_id: 8,
  status: "参加",
)
Participation.create!(
  user_id: 9,
  event_id: 8,
  status: "参加",
)
Participation.create!(
  user_id: 10,
  event_id: 8,
  status: "参加",
)
Participation.create!(
  user_id: 11,
  event_id: 8,
  status: "参加",
)
Participation.create!(
  user_id: 12,
  event_id: 8,
  status: "参加",
)
Participation.create!(
  user_id: 13,
  event_id: 8,
  status: "参加",
)
Participation.create!(
  user_id: 14,
  event_id: 8,
  status: "参加",
)
Participation.create!(
  user_id: 1,
  event_id: 9,
  status: "参加",
)
Participation.create!(
  user_id: 2,
  event_id: 9,
  status: "参加",
)
Participation.create!(
  user_id: 3,
  event_id: 9,
  status: "参加",
)
Participation.create!(
  user_id: 4,
  event_id: 9,
  status: "参加",
)
Participation.create!(
  user_id: 5,
  event_id: 9,
  status: "参加",
)
Participation.create!(
  user_id: 6,
  event_id: 9,
  status: "参加",
)
Participation.create!(
  user_id: 7,
  event_id: 9,
  status: "参加",
)
Participation.create!(
  user_id: 8,
  event_id: 9,
  status: "参加",
)
Participation.create!(
  user_id: 9,
  event_id: 9,
  status: "参加",
)
Participation.create!(
  user_id: 10,
  event_id: 9,
  status: "参加",
)
Participation.create!(
  user_id: 11,
  event_id: 9,
  status: "参加",
)
Participation.create!(
  user_id: 12,
  event_id: 9,
  status: "参加",
)
Participation.create!(
  user_id: 13,
  event_id: 9,
  status: "参加",
)
Participation.create!(
  user_id: 14,
  event_id: 9,
  status: "参加",
)
Participation.create!(
  user_id: 1,
  event_id: 10,
  status: "参加",
)
Participation.create!(
  user_id: 2,
  event_id: 10,
  status: "参加",
)
Participation.create!(
  user_id: 3,
  event_id: 10,
  status: "参加",
)
Participation.create!(
  user_id: 4,
  event_id: 10,
  status: "参加",
)
Participation.create!(
  user_id: 5,
  event_id: 10,
  status: "参加",
)
Participation.create!(
  user_id: 6,
  event_id: 10,
  status: "参加",
)
Participation.create!(
  user_id: 7,
  event_id: 10,
  status: "参加",
)
Participation.create!(
  user_id: 8,
  event_id: 10,
  status: "参加",
)
Participation.create!(
  user_id: 9,
  event_id: 10,
  status: "参加",
)
Participation.create!(
  user_id: 10,
  event_id: 10,
  status: "参加",
)
Participation.create!(
  user_id: 11,
  event_id: 10,
  status: "参加",
)
Participation.create!(
  user_id: 12,
  event_id: 10,
  status: "参加",
)
Participation.create!(
  user_id: 13,
  event_id: 10,
  status: "参加",
)
Participation.create!(
  user_id: 14,
  event_id: 10,
  status: "参加",
)
Participation.create!(
  user_id: 1,
  event_id: 11,
  status: "参加",
)
Participation.create!(
  user_id: 2,
  event_id: 11,
  status: "参加",
)
Participation.create!(
  user_id: 3,
  event_id: 11,
  status: "参加",
)
Participation.create!(
  user_id: 4,
  event_id: 11,
  status: "参加",
)
Participation.create!(
  user_id: 5,
  event_id: 11,
  status: "参加",
)
Participation.create!(
  user_id: 6,
  event_id: 11,
  status: "参加",
)
Participation.create!(
  user_id: 7,
  event_id: 11,
  status: "参加",
)
Participation.create!(
  user_id: 8,
  event_id: 11,
  status: "参加",
)
Participation.create!(
  user_id: 9,
  event_id: 11,
  status: "参加",
)
Participation.create!(
  user_id: 10,
  event_id: 11,
  status: "参加",
)
Participation.create!(
  user_id: 11,
  event_id: 11,
  status: "参加",
)
Participation.create!(
  user_id: 12,
  event_id: 11,
  status: "参加",
)
Participation.create!(
  user_id: 13,
  event_id: 11,
  status: "参加",
)
Participation.create!(
  user_id: 14,
  event_id: 11,
  status: "参加",
)
Participation.create!(
  user_id: 1,
  event_id: 12,
  status: "参加",
)
Participation.create!(
  user_id: 2,
  event_id: 12,
  status: "参加",
)
Participation.create!(
  user_id: 3,
  event_id: 12,
  status: "参加",
)
Participation.create!(
  user_id: 4,
  event_id: 12,
  status: "参加",
)
Participation.create!(
  user_id: 5,
  event_id: 12,
  status: "参加",
)
Participation.create!(
  user_id: 6,
  event_id: 12,
  status: "参加",
)
Participation.create!(
  user_id: 7,
  event_id: 12,
  status: "参加",
)
Participation.create!(
  user_id: 8,
  event_id: 12,
  status: "参加",
)
Participation.create!(
  user_id: 9,
  event_id: 12,
  status: "参加",
)
Participation.create!(
  user_id: 10,
  event_id: 12,
  status: "参加",
)
Participation.create!(
  user_id: 11,
  event_id: 12,
  status: "参加",
)
Participation.create!(
  user_id: 12,
  event_id: 12,
  status: "参加",
)
Participation.create!(
  user_id: 13,
  event_id: 12,
  status: "参加",
)
Participation.create!(
  user_id: 14,
  event_id: 12,
  status: "参加",
)
Participation.create!(
  user_id: 1,
  event_id: 13,
  status: "参加",
)
Participation.create!(
  user_id: 2,
  event_id: 13,
  status: "参加",
)
Participation.create!(
  user_id: 3,
  event_id: 13,
  status: "参加",
)
Participation.create!(
  user_id: 4,
  event_id: 13,
  status: "参加",
)
Participation.create!(
  user_id: 5,
  event_id: 13,
  status: "参加",
)
Participation.create!(
  user_id: 6,
  event_id: 13,
  status: "参加",
)
Participation.create!(
  user_id: 7,
  event_id: 13,
  status: "参加",
)
Participation.create!(
  user_id: 8,
  event_id: 13,
  status: "参加",
)
Participation.create!(
  user_id: 9,
  event_id: 13,
  status: "参加",
)
Participation.create!(
  user_id: 10,
  event_id: 13,
  status: "参加",
)
Participation.create!(
  user_id: 11,
  event_id: 13,
  status: "参加",
)
Participation.create!(
  user_id: 12,
  event_id: 13,
  status: "参加",
)
Participation.create!(
  user_id: 13,
  event_id: 13,
  status: "参加",
)
Participation.create!(
  user_id: 14,
  event_id: 13,
  status: "参加",
)
Participation.create!(
  user_id: 1,
  event_id: 14,
  status: "参加",
)
Participation.create!(
  user_id: 2,
  event_id: 14,
  status: "参加",
)
Participation.create!(
  user_id: 3,
  event_id: 14,
  status: "参加",
)
Participation.create!(
  user_id: 4,
  event_id: 14,
  status: "参加",
)
Participation.create!(
  user_id: 5,
  event_id: 14,
  status: "参加",
)
Participation.create!(
  user_id: 6,
  event_id: 14,
  status: "参加",
)
Participation.create!(
  user_id: 7,
  event_id: 14,
  status: "参加",
)
Participation.create!(
  user_id: 8,
  event_id: 14,
  status: "参加",
)
Participation.create!(
  user_id: 9,
  event_id: 14,
  status: "参加",
)
Participation.create!(
  user_id: 10,
  event_id: 14,
  status: "参加",
)
Participation.create!(
  user_id: 11,
  event_id: 14,
  status: "参加",
)
Participation.create!(
  user_id: 12,
  event_id: 14,
  status: "参加",
)
Participation.create!(
  user_id: 13,
  event_id: 14,
  status: "参加",
)
Participation.create!(
  user_id: 14,
  event_id: 14,
  status: "参加",
)
Participation.create!(
  user_id: 1,
  event_id: 15,
  status: "参加",
)
Participation.create!(
  user_id: 2,
  event_id: 15,
  status: "参加",
)
Participation.create!(
  user_id: 3,
  event_id: 15,
  status: "参加",
)
Participation.create!(
  user_id: 4,
  event_id: 15,
  status: "参加",
)
Participation.create!(
  user_id: 5,
  event_id: 15,
  status: "参加",
)
Participation.create!(
  user_id: 6,
  event_id: 15,
  status: "参加",
)
Participation.create!(
  user_id: 7,
  event_id: 15,
  status: "参加",
)
Participation.create!(
  user_id: 8,
  event_id: 15,
  status: "参加",
)
Participation.create!(
  user_id: 9,
  event_id: 15,
  status: "参加",
)
Participation.create!(
  user_id: 10,
  event_id: 15,
  status: "参加",
)
Participation.create!(
  user_id: 11,
  event_id: 15,
  status: "参加",
)
Participation.create!(
  user_id: 12,
  event_id: 15,
  status: "参加",
)
Participation.create!(
  user_id: 13,
  event_id: 15,
  status: "参加",
)
Participation.create!(
  user_id: 14,
  event_id: 15,
  status: "参加",
)
Participation.create!(
  user_id: 1,
  event_id: 16,
  status: "参加",
)
Participation.create!(
  user_id: 2,
  event_id: 16,
  status: "参加",
)
Participation.create!(
  user_id: 3,
  event_id: 16,
  status: "参加",
)
Participation.create!(
  user_id: 4,
  event_id: 16,
  status: "参加",
)
Participation.create!(
  user_id: 5,
  event_id: 16,
  status: "参加",
)
Participation.create!(
  user_id: 6,
  event_id: 16,
  status: "参加",
)
Participation.create!(
  user_id: 7,
  event_id: 16,
  status: "参加",
)
Participation.create!(
  user_id: 8,
  event_id: 16,
  status: "参加",
)
Participation.create!(
  user_id: 9,
  event_id: 16,
  status: "参加",
)
Participation.create!(
  user_id: 10,
  event_id: 16,
  status: "参加",
)
Participation.create!(
  user_id: 11,
  event_id: 16,
  status: "参加",
)
Participation.create!(
  user_id: 12,
  event_id: 16,
  status: "参加",
)
Participation.create!(
  user_id: 13,
  event_id: 16,
  status: "参加",
)
Participation.create!(
  user_id: 14,
  event_id: 16,
  status: "参加",
)
Participation.create!(
  user_id: 1,
  event_id: 17,
  status: "参加",
)
Participation.create!(
  user_id: 2,
  event_id: 17,
  status: "参加",
)
Participation.create!(
  user_id: 3,
  event_id: 17,
  status: "参加",
)
Participation.create!(
  user_id: 4,
  event_id: 17,
  status: "参加",
)
Participation.create!(
  user_id: 5,
  event_id: 17,
  status: "参加",
)
Participation.create!(
  user_id: 6,
  event_id: 17,
  status: "参加",
)
Participation.create!(
  user_id: 7,
  event_id: 17,
  status: "参加",
)
Participation.create!(
  user_id: 8,
  event_id: 17,
  status: "参加",
)
Participation.create!(
  user_id: 9,
  event_id: 17,
  status: "参加",
)
Participation.create!(
  user_id: 10,
  event_id: 17,
  status: "参加",
)
Participation.create!(
  user_id: 11,
  event_id: 17,
  status: "参加",
)
Participation.create!(
  user_id: 12,
  event_id: 17,
  status: "参加",
)
Participation.create!(
  user_id: 13,
  event_id: 17,
  status: "参加",
)
Participation.create!(
  user_id: 14,
  event_id: 17,
  status: "参加",
)
Participation.create!(
  user_id: 1,
  event_id: 18,
  status: "参加",
)
Participation.create!(
  user_id: 2,
  event_id: 18,
  status: "参加",
)
Participation.create!(
  user_id: 3,
  event_id: 18,
  status: "参加",
)
Participation.create!(
  user_id: 4,
  event_id: 18,
  status: "参加",
)
Participation.create!(
  user_id: 5,
  event_id: 18,
  status: "参加",
)
Participation.create!(
  user_id: 6,
  event_id: 18,
  status: "参加",
)
Participation.create!(
  user_id: 7,
  event_id: 18,
  status: "参加",
)
Participation.create!(
  user_id: 8,
  event_id: 18,
  status: "参加",
)
Participation.create!(
  user_id: 9,
  event_id: 18,
  status: "参加",
)
Participation.create!(
  user_id: 10,
  event_id: 18,
  status: "参加",
)
Participation.create!(
  user_id: 11,
  event_id: 18,
  status: "参加",
)
Participation.create!(
  user_id: 12,
  event_id: 18,
  status: "参加",
)
Participation.create!(
  user_id: 13,
  event_id: 18,
  status: "参加",
)
Participation.create!(
  user_id: 14,
  event_id: 18,
  status: "参加",
)
Participation.create!(
  user_id: 1,
  event_id: 19,
  status: "参加",
)
Participation.create!(
  user_id: 2,
  event_id: 19,
  status: "参加",
)
Participation.create!(
  user_id: 3,
  event_id: 19,
  status: "参加",
)
Participation.create!(
  user_id: 4,
  event_id: 19,
  status: "参加",
)
Participation.create!(
  user_id: 5,
  event_id: 19,
  status: "参加",
)
Participation.create!(
  user_id: 6,
  event_id: 19,
  status: "参加",
)
Participation.create!(
  user_id: 7,
  event_id: 19,
  status: "参加",
)
Participation.create!(
  user_id: 8,
  event_id: 19,
  status: "参加",
)
Participation.create!(
  user_id: 9,
  event_id: 19,
  status: "参加",
)
Participation.create!(
  user_id: 10,
  event_id: 19,
  status: "参加",
)
Participation.create!(
  user_id: 11,
  event_id: 19,
  status: "参加",
)
Participation.create!(
  user_id: 12,
  event_id: 19,
  status: "参加",
)
Participation.create!(
  user_id: 13,
  event_id: 19,
  status: "参加",
)
Participation.create!(
  user_id: 14,
  event_id: 19,
  status: "参加",
)