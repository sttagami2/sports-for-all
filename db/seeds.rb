# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times do
  gimei = Gimei.new
  
  User.create!(
    name: gimei.name.kanji,
    name_k: gimei.name.hiragana,
    image: File.open('app/assets/images/sissors.png'),
    introduction: "説明文です。説明文です。説明文です。説明文です。",
    phone_number: "08000001111",
    age: 20,
    email: Faker::Internet.email,
    password: "111111",
    status: 0,
    games: 0,
    wins: 0,
  )
end

10.times do
  gimei = Gimei.new
  
  Location.create!(
    name: gimei.town.kanji,
    postcode: Faker::Address.postcode,
    address: gimei.address.kanji,
  )
end


Type.create!(
  name: "野球",
)
Type.create(
  name: "フットサル",
)
Type.create(
  name: "バレーボール",
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
  name: "ハンドボール",
)
Type.create(
  name: "ゴルフ",
)

10.times do
  Event.create!(
    location_id: rand(1..10).to_s,
    type_id: rand(1..8).to_s,
    event_name: "わいわいガヤガヤ",
    introduction: "説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。",
    date: "2020/05/01",
    place_name: "東京都",
    address: "東京都渋谷区",
  )
end

5.times do
  Game.create!(
    win_id: 1,
    lose_id: 2,
    win_score: 25,
    lose_score: rand(10..24).to_s,
    event_id: 1,
  )
end

Participation.create!(
  user_id: 1,
  event_id: 1,
  game_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 2,
  event_id: 1,
  game_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 3,
  event_id: 1,
  game_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 4,
  event_id: 1,
  game_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 5,
  event_id: 1,
  game_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 6,
  event_id: 1,
  game_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 7,
  event_id: 1,
  game_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 8,
  event_id: 1,
  game_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 9,
  event_id: 1,
  game_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 10,
  event_id: 1,
  game_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 11,
  event_id: 1,
  game_id: 1,
  status: 0,
)
Participation.create!(
  user_id: 12,
  event_id: 1,
  game_id: 1,
  status: 0,
)


20.times do
  takarabako = Takarabako.open

  Team.create!(
    name: takarabako,
    event_id: rand(1..2).to_s,
    game_id: 1,
  )
end


50.times do
  Comment.create!(
    user_id: rand(1..50).to_i,
    event_id: rand(1..10).to_i,
    comment: "コメントです！コメントです！コメントです！",
  )
end


  Resolute.create(
    user_id: 1,
    game_id: 1,
  )