require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"types"のデータを作成します'

Type.create(
  name: "バレーボール",
)
Type.create!(
  name: "野球",
)
Type.create(
  name: "フットサル",
)
Type.create(
  name: "ボウリング",
)
Type.create(
  name: "テニス",
)
Type.create(
  name: "バスケットボール",
)
Type.create(
  name: "卓球",
)
Type.create(
  name: "バドミントン",
)