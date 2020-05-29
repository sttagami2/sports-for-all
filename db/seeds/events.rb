require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"events"のデータを作成します'

Event.create!(
  user_id: 1,
  type_id: 1,
  event_name: "第19回ごちゃまぜバレー",
  introduction: "とうとうコロナの影響が治ってきました！体育館も6月20日より会館するそうです。そのため、6月27日に体育館を予約しますので、4ヶ月ぶりとなるバレーボールを皆んなで楽しみましょう！また、今回は私(田上)が製作したWebアプリを使います！",
  start_date: '2020-06-27 13:00:00',
  finish_date: '2020-06-27 18:00:00',
  place_name: "ふれあいの森",
  address: "愛知県知多郡阿久比町大字大字板山比沙田78",
)

Event.create!(
  user_id: 1,
  type_id: 2,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-01 13:00:00',
  finish_date: '2020-06-01 18:00:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 1,
  type_id: 3,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-02 13:00:00',
  finish_date: '2020-06-02 18:00:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 1,
  type_id: 4,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-03 13:00:00',
  finish_date: '2020-06-03 18:00:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 1,
  type_id: 5,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-04 13:00:00',
  finish_date: '2020-06-04 18:00:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 1,
  type_id: 6,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-05 13:00:00',
  finish_date: '2020-06-05 18:00:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 1,
  type_id: 7,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-06 13:00:00',
  finish_date: '2020-06-06 18:00:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 1,
  type_id: 8,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-07 13:00:00',
  finish_date: '2020-06-07 18:00:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 2,
  type_id: 1,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-08 13:00:00',
  finish_date: '2020-06-08 18:00:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 2,
  type_id: 2,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-09 13:00:00',
  finish_date: '2020-06-09 18:00:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 2,
  type_id: 3,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-10 13:00:00',
  finish_date: '2020-06-10 18:00:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 2,
  type_id: 4,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-11 13:00:00',
  finish_date: '2020-06-11 18:00:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 2,
  type_id: 5,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-12 13:00:00',
  finish_date: '2020-06-12 18:00:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 2,
  type_id: 6,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-13 13:00:00',
  finish_date: '2020-06-13 18:00:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 2,
  type_id: 7,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-14 13:00:00',
  finish_date: '2020-06-14 18:00:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 2,
  type_id: 8,
  event_name: "#{Takarabako.open}イベント",
  introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
  start_date: '2020-06-15 13:00:00',
  finish_date: '2020-06-15 18:00:00',
  place_name: Gimei.town.kanji,
  address: Gimei.address.kanji,
)

Event.create!(
  user_id: 1,
  type_id: 1,
  event_name: "(仮)ごちゃまぜバレー",
  introduction: "ごちゃまぜバレーで集まってはおりませんが、仮のデータとして入力します。",
  start_date: '2020-05-29 13:00:00',
  finish_date: '2020-05-29 18:00:00',
  place_name: "ふれあいの森",
  address: "愛知県知多郡阿久比町大字大字板山比沙田78",
)

Event.create!(
  user_id: 1,
  type_id: 1,
  event_name: "(仮)ごちゃまぜバレー2",
  introduction: "ごちゃまぜバレーで集まってはおりませんが、仮のデータとして入力します。",
  start_date: '2020-05-30 13:00:00',
  finish_date: '2020-05-30 18:00:00',
  place_name: "ふれあいの森",
  address: "愛知県知多郡阿久比町大字大字板山比沙田78",
)

Event.create!(
  user_id: 1,
  type_id: 1,
  event_name: "(仮)ごちゃまぜバレー3",
  introduction: "ごちゃまぜバレーで集まってはおりませんが、仮のデータとして入力します。",
  start_date: '2020-05-31 13:00:00',
  finish_date: '2020-05-31 18:00:00',
  place_name: "ふれあいの森",
  address: "愛知県知多郡阿久比町大字大字板山比沙田78",
)
