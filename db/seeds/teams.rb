require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"teams"のデータを作成します'


# 10.times do
#   takarabako = Takarabako.open

#   Team.create!(
#     name: takarabako,
#     event_id: 1,
#   )
# end
# 10.times do
#   takarabako = Takarabako.open

#   Team.create!(
#     name: takarabako,
#     event_id: 2,
#   )
# end
# 10.times do
#   takarabako = Takarabako.open

#   Team.create!(
#     name: takarabako,
#     event_id: 3,
#   )
# end