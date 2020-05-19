require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"types"のデータを作成します'

Type.create(
  name: "vollayball",
)
Type.create!(
  name: "baseball",
)
Type.create(
  name: "football",
)
Type.create(
  name: "bowling",
)
Type.create(
  name: "tennis",
)
Type.create(
  name: "basketball",
)
Type.create(
  name: "handball",
)
Type.create(
  name: "badminton",
)