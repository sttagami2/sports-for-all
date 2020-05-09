require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"game_details"のデータを作成します'


GameDetail.create!(
  game_id: 1,
  team_id: 1,
)
GameDetail.create!(
  game_id: 1,
  team_id: 2,
)
GameDetail.create!(
  game_id: 2,
  team_id: 1,
)
GameDetail.create!(
  game_id: 2,
  team_id: 2,
)
GameDetail.create!(
  game_id: 3,
  team_id: 1,
)
GameDetail.create!(
  game_id: 3,
  team_id: 2,
)
GameDetail.create!(
  game_id: 4,
  team_id: 1,
)
GameDetail.create!(
  game_id: 4,
  team_id: 2,
)
GameDetail.create!(
  game_id: 5,
  team_id: 1,
)
GameDetail.create!(
  game_id: 5,
  team_id: 2,
)
GameDetail.create!(
  game_id: 6,
  team_id: 1,
)
GameDetail.create!(
  game_id: 6,
  team_id: 3,
)
GameDetail.create!(
  game_id: 7,
  team_id: 1,
)
GameDetail.create!(
  game_id: 7,
  team_id: 3,
)
GameDetail.create!(
  game_id: 8,
  team_id: 1,
)
GameDetail.create!(
  game_id: 8,
  team_id: 3,
)
GameDetail.create!(
  game_id: 9,
  team_id: 1,
)
GameDetail.create!(
  game_id: 9,
  team_id: 3,
)
GameDetail.create!(
  game_id: 10,
  team_id: 1,
)
GameDetail.create!(
  game_id: 10,
  team_id: 3,
)