require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"events"のデータを作成します'

Event.create!(
  user_id: 1,
  type_id: 1,
  event_name: "第19回ごちゃまぜバレー",
  introduction: "とうとうコロナの影響が治ってきました！体育館も6月20日より会館するそうです。そのため、6月27日に体育館を予約しますので、4ヶ月ぶりとなるバレーボールを皆んなで楽しみましょう！また、今回は私(田上)が製作したWebアプリを使います！",
  start_date: '2020-06-27 06:00:00',
  finish_date: '2020-06-27 23:59:00',
  place_name: "ふれあいの森",
  address: "愛知県知多郡阿久比町大字大字板山比沙田78",
)

Event.create!(
  user_id: 1,
  type_id: 2,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-20 06:00:00',
  finish_date: '2020-06-20 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 1,
  type_id: 3,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-21 06:00:00',
  finish_date: '2020-06-21 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 1,
  type_id: 4,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-22 06:00:00',
  finish_date: '2020-06-22 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 1,
  type_id: 5,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-23 06:00:00',
  finish_date: '2020-06-23 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 1,
  type_id: 6,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-05 06:00:00',
  finish_date: '2020-06-05 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 1,
  type_id: 7,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-06 06:00:00',
  finish_date: '2020-06-06 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 1,
  type_id: 8,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-07 06:00:00',
  finish_date: '2020-06-07 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 2,
  type_id: 1,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-08 06:00:00',
  finish_date: '2020-06-08 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 2,
  type_id: 2,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-09 06:00:00',
  finish_date: '2020-06-09 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 2,
  type_id: 3,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-10 06:00:00',
  finish_date: '2020-06-10 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 2,
  type_id: 4,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-11 06:00:00',
  finish_date: '2020-06-11 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 2,
  type_id: 5,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-12 06:00:00',
  finish_date: '2020-06-12 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 2,
  type_id: 6,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-13 06:00:00',
  finish_date: '2020-06-13 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 2,
  type_id: 7,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-14 06:00:00',
  finish_date: '2020-06-14 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 2,
  type_id: 8,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-15 06:00:00',
  finish_date: '2020-06-15 23:59:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 1,
  type_id: 1,
  event_name: "(仮)ごちゃまぜバレー",
  introduction: "ごちゃまぜバレーで集まってはおりませんが、仮のデータとして入力します。",
  start_date: '2020-05-29 06:00:00',
  finish_date: '2020-05-29 23:59:00',
  place_name: "ふれあいの森",
  address: "愛知県知多郡阿久比町大字大字板山比沙田78",
)

Event.create!(
  user_id: 1,
  type_id: 1,
  event_name: "(仮)ごちゃまぜバレー2",
  introduction: "ごちゃまぜバレーで集まってはおりませんが、仮のデータとして入力します。",
  start_date: '2020-05-30 06:00:00',
  finish_date: '2020-05-30 23:59:00',
  place_name: "ふれあいの森",
  address: "愛知県知多郡阿久比町大字大字板山比沙田78",
)

Event.create!(
  user_id: 1,
  type_id: 1,
  event_name: "(仮)ごちゃまぜバレー3",
  introduction: "ごちゃまぜバレーで集まってはおりませんが、仮のデータとして入力します。",
  start_date: '2020-05-31 06:00:00',
  finish_date: '2020-05-31 23:59:00',
  place_name: "ふれあいの森",
  address: "愛知県知多郡阿久比町大字大字板山比沙田78",
)
