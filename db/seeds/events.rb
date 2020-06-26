require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"events"のデータを作成します'

Event.create!(
  # 1
  user_id: 1,
  type_id: 1,
  event_name: "バレーボール大会",
  introduction: "バレーやりますよ！",
  start_date: '2020-07-29 13:00:00',
  finish_date: '2020-07-29 18:00:00',
  place_name: "ふれあいの森",
  address: "愛知県知多郡阿久比町大字大字板山比沙田78",
)

Event.create!(
  # 2
  user_id: 1,
  type_id: 2,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-07-30 07:00:00',
  finish_date: '2020-07-30 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  # 3
  user_id: 1,
  type_id: 3,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-07-21 07:00:00',
  finish_date: '2020-07-21 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  # 4
  user_id: 1,
  type_id: 4,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-07-22 07:00:00',
  finish_date: '2020-07-22 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  # 5
  user_id: 1,
  type_id: 5,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-07-23 07:00:00',
  finish_date: '2020-07-23 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  # 6
  user_id: 1,
  type_id: 6,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-07-05 07:00:00',
  finish_date: '2020-07-05 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  # 7
  user_id: 1,
  type_id: 7,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-07-07 07:00:00',
  finish_date: '2020-07-07 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  # 8
  user_id: 1,
  type_id: 8,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-07-07 07:00:00',
  finish_date: '2020-07-07 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  # 9
  user_id: 2,
  type_id: 1,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-07-08 07:00:00',
  finish_date: '2020-07-08 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  # 10
  user_id: 2,
  type_id: 2,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-07-09 07:00:00',
  finish_date: '2020-07-09 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  # 11
  user_id: 2,
  type_id: 3,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-07-10 07:00:00',
  finish_date: '2020-07-10 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  # 12
  user_id: 2,
  type_id: 4,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-07-11 07:00:00',
  finish_date: '2020-07-11 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  # 13
  user_id: 2,
  type_id: 5,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-07-12 07:00:00',
  finish_date: '2020-07-12 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  # 14
  user_id: 2,
  type_id: 6,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-07-13 07:00:00',
  finish_date: '2020-07-13 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  # 15
  user_id: 2,
  type_id: 7,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-07-14 07:00:00',
  finish_date: '2020-07-14 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  # 16
  user_id: 2,
  type_id: 8,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-07-15 07:00:00',
  finish_date: '2020-07-15 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  # 17
  user_id: 1,
  type_id: 1,
  event_name: "(仮)ごちゃまぜバレー",
  introduction: "ごちゃまぜバレーで集まってはおりませんが、仮のデータとして入力します。",
  start_date: '2020-05-29 07:00:00',
  finish_date: '2020-05-29 23:59:00',
  place_name: "ふれあいの森",
  address: "愛知県知多郡阿久比町大字大字板山比沙田78",
)

Event.create!(
  # 18
  user_id: 1,
  type_id: 1,
  event_name: "(仮)ごちゃまぜバレー2",
  introduction: "ごちゃまぜバレーで集まってはおりませんが、仮のデータとして入力します。",
  start_date: '2020-05-30 07:00:00',
  finish_date: '2020-05-30 23:59:00',
  place_name: "ふれあいの森",
  address: "愛知県知多郡阿久比町大字大字板山比沙田78",
)

Event.create!(
  # 19
  user_id: 1,
  type_id: 1,
  event_name: "(仮)ごちゃまぜバレー3",
  introduction: "ごちゃまぜバレーで集まってはおりませんが、仮のデータとして入力します。",
  start_date: '2020-05-31 07:00:00',
  finish_date: '2020-05-31 23:59:00',
  place_name: "ふれあいの森",
  address: "愛知県知多郡阿久比町大字大字板山比沙田78",
)

Event.create!(
  # 20
  user_id: 1,
  type_id: 1,
  event_name: "第19回ごちゃまぜバレー",
  introduction: "とうとうコロナの影響が治ってきました！体育館も6月20日より会館するそうです。そのため、6月27日に体育館を予約しますので、4ヶ月ぶりとなるバレーボールを皆んなで楽しみましょう！また、今回は私(田上)が製作したWebアプリを使います！",
  start_date: '2020-06-27 13:00:00',
  finish_date: '2020-06-27 18:00:00',
  place_name: "ふれあいの森",
  address: "愛知県知多郡阿久比町大字大字板山比沙田78",
)