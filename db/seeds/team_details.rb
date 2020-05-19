require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"team_details"のデータを作成します'


# TeamDetail.create!(
#   team_id: 1,
#   participation_id: 1,
# )
# TeamDetail.create!(
#   team_id: 1,
#   participation_id: 2,
# )
# TeamDetail.create!(
#   team_id: 1,
#   participation_id: 3,
# )
# TeamDetail.create!(
#   team_id: 1,
#   participation_id: 4,
# )
# TeamDetail.create!(
#   team_id: 1,
#   participation_id: 5,
# )
# TeamDetail.create!(
#   team_id: 1,
#   participation_id: 6,
# )
# TeamDetail.create!(
#   team_id: 2,
#   participation_id: 7,
# )
# TeamDetail.create!(
#   team_id: 2,
#   participation_id: 8,
# )
# TeamDetail.create!(
#   team_id: 2,
#   participation_id: 9,
# )
# TeamDetail.create!(
#   team_id: 2,
#   participation_id: 10,
# )
# TeamDetail.create!(
#   team_id: 2,
#   participation_id: 11,
# )
# TeamDetail.create!(
#   team_id: 2,
#   participation_id: 12,
# )