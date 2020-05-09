require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"teams"のデータを作成します'


20.times do
  takarabako = Takarabako.open

  Team.create!(
    name: takarabako,
    event_id: rand(1..2).to_s,
  )
end