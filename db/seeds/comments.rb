require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"comments"のデータを作成します'


50.times do
  Comment.create!(
    user_id: rand(1..50).to_i,
    event_id: rand(1..10).to_i,
    comment: "コメントです！コメントです！コメントです！",
  )
end