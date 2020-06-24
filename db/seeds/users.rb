require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"users"のデータを作成します'

User.create!(
  name: "太郎",
  name_k: "タロウ",
  image: File.open('app/assets/images/logo-transparent.png'),
  phone_number: "09099991111",
  age: 24,
  introduction: "田上です。よろしくお願いします！ごちゃまぜバレー部の幹事をしております。",
  email: "a@gmail.com",
  password: "111111"
)

User.create!(
  name: "醤油",
  name_k: "ショウユ",
  image: File.open('app/assets/images/taichi.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "よろしくお願いします！",
  email: "k@gmail.com",
  password: "111111"
)

User.create!(
  name: "ウィリ",
  name_k: "ウィリ",
  image: File.open('app/assets/images/will.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "よろしくお願いします！",
  email: "i@gmail.com",
  password: "111111"
)

User.create!(
  name: "塩",
  name_k: "シオ",
  image: File.open('app/assets/images/ozawa.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "よろしくお願いします！ダイエット頑張ってますが、痩せれません。",
  email: "j@gmail.com",
  password: "111111"
)

User.create!(
  name: "水素",
  name_k: "スイソ",
  image: File.open('app/assets/images/ota.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "よろしくお願いします！周りが笑ってくれることが何よりも嬉しく思います！",
  email: "o@gmail.com",
  password: "111111"
)

User.create!(
  name: "イス",
  name_k: "イス",
  image: File.open('app/assets/images/oka.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "よろしくお願いします！興奮のあまり奇声をあげてしまう場合があります。",
  email: "l@gmail.com",
  password: "111111"
)

User.create!(
  name: "箸",
  name_k: "ハシ",
  image: File.open('app/assets/images/kensho.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "よろしくお願いします！鼻が特徴的です！",
  email: "d@gmail.com",
  password: "111111"
)

User.create!(
  name: "東京",
  name_k: "トウキョウ",
  image: File.open('app/assets/images/saori.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "よろしくお願いします！",
  email: "g@gmail.com",
  password: "111111"
)

User.create!(
  name: "愛知",
  name_k: "アイチ",
  image: File.open('app/assets/images/tae.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "よろしくお願いします！",
  email: "h@gmail.com",
  password: "111111"
)

User.create!(
  name: "大阪",
  name_k: "オオサカ",
  image: File.open('app/assets/images/osamu.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "よろしくお願いします！あだ名はピロティーです。ちなみにオサムもあだ名です。",
  email: "e@gmail.com",
  password: "111111"
)

User.create!(
  name: "福岡",
  name_k: "フクオカ",
  image: File.open('app/assets/images/yuki.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "よろしくお願いします！",
  email: "b@gmail.com",
  password: "111111"
)

User.create!(
  name: "北海道",
  name_k: "ホッカイドウ",
  image: File.open('app/assets/images/misuzu.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "よろしくお願いします！",
  email: "c@gmail.com",
  password: "111111"
)

User.create!(
  name: "神奈川",
  name_k: "カナガワ",
  image: File.open('app/assets/images/risa.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "よろしくお願いします！",
  email: "f@gmail.com",
  password: "111111"
)


User.create!(
  name: "埼玉",
  name_k: "サイタマ",
  image: File.open('app/assets/images/hiroki.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "よろしくお願いします！ナオトインティライミリスペクトです。",
  email: "m@gmail.com",
  password: "111111"
)

User.create!(
  # 15
  name: "田上",
  name_k: "タガミ",
  image: File.open('app/assets/images/shoto.jpg'),
  phone_number: "08094811702",
  age: 24,
  introduction: "田上です。よろしくお願いします！ごちゃまぜバレー部の幹事をしております。",
  email: "shoto@tagami",
  password: "111111"
)

User.create!(
  # 16
  name: "太一",
  name_k: "タイチ",
  phone_number: "09041973142",
  age: 24,
  introduction: "太一です。",
  email: "taichi@ishino",
  password: "111111"
)

User.create!(
  # 17
  name: "たえ",
  name_k: "タエ",
  phone_number: "09017594740",
  age: 24,
  introduction: "たえです。",
  email: "tae@enokishima",
  password: "111111"
)

User.create!(
  # 18
  name: "王",
  name_k: "オウ",
  phone_number: "08041618116",
  age: 24,
  introduction: "王です。",
  email: "shin@oh",
  password: "111111"
)

User.create!(
  # 19
  name: "幸一",
  name_k: "コウイチ",
  phone_number: "09091789023",
  age: 24,
  introduction: "船渡幸一です。",
  email: "koichi@hunato",
  password: "111111"
)

User.create!(
  # 20
  name: "拓真",
  name_k: "タクマ",
  phone_number: '09098919021',
  age: 24,
  introduction: "安田拓馬です。",
  email: "takuma@yasuda",
  password: "111111"
)

User.create!(
  # 21
  name: "芝",
  name_k: "シバ",
  phone_number: '09047847283',
  age: 24,
  introduction: "芝です。",
  email: "shuto@shiba",
  password: "111111"
)

User.create!(
  # 22
  name: "おかちゃん",
  name_k: "オカチャン",
  phone_number: '09042682754',
  age: 24,
  introduction: "おかちゃんです。",
  email: "hiroki@okada",
  password: "111111"
)

User.create!(
  # 23
  name: "かおり",
  name_k: "カオリ",
  phone_number: '08033261771',
  age: 24,
  introduction: "おかちゃんです。",
  email: "kaori@maeda",
  password: "111111"
)

User.create!(
  # 24
  name: "大暉",
  name_k: "ダイキ",
  phone_number: '08036498258',
  age: 24,
  introduction: "小森大暉です！",
  email: "daiki@komori",
  password: "111111"
)

User.create!(
  # 25
  name: "おさむ",
  name_k: "オサム",
  phone_number: '08036498258',
  age: 24,
  introduction: "おさむです！",
  email: "hiroharu@hayashi",
  password: "111111"
)

User.create!(
  # 26
  name: "さおりん",
  name_k: "サオリン",
  phone_number: '09099195483',
  age: 24,
  introduction: "さおりんです！",
  email: "saori@kondo",
  password: "111111"
)

User.create!(
  # 27
  name: "なお",
  name_k: "ナオ",
  phone_number: '09048588386',
  age: 24,
  introduction: "なおです！",
  email: "nao@takahashi",
  password: "111111"
)

User.create!(
  # 28
  name: "がんちゃん",
  name_k: "ガンチャン",
  phone_number: '08043007171',
  age: 24,
  introduction: "岩井です！",
  email: "nozomu@iwai",
  password: "111111"
)

User.create!(
  # 29
  name: "つかさ",
  name_k: "ツカサ",
  phone_number: '09092628908',
  age: 24,
  introduction: "つかさです！",
  email: "tsukasa@kato",
  password: "111111"
)

User.create!(
  # 30
  name: "みすず",
  name_k: "ミスズ",
  phone_number: '0566741009',
  age: 24,
  introduction: "みすずです！",
  email: "misuzu@iwama",
  password: "111111"
)

User.create!(
  # 31
  name: "太田ポン",
  name_k: "オオタ",
  phone_number: '08015581854',
  age: 24,
  introduction: "太田です！",
  email: "yusuke@ota",
  password: "111111"
)

User.create!(
  # 32
  name: "ウィリちゃん",
  name_k: "ウィリチャン",
  phone_number: '09065777418',
  age: 24,
  introduction: "ウィリウィリです！",
  email: "kosuke@miyazaki",
  password: "111111"
)

User.create!(
  # 33
  name: "笠井",
  name_k: "カサイ",
  phone_number: '09099159002',
  age: 24,
  introduction: "笠井です！",
  email: "yusuke@kasai",
  password: "111111"
)

User.create!(
  # 34
  name: "ひさ",
  name_k: "ヒサ",
  phone_number: '09088627828',
  age: 24,
  introduction: "ひさです！",
  email: "hisayuki@komatsu",
  password: "111111"
)

# 50.times do
#   gimei = Gimei.new
  
#   User.create!(
#     name: gimei.name.kanji,
#     name_k: gimei.name.hiragana,
#     image: File.open('app/assets/images/sissors.png'),
#     introduction: "#{gimei.name.kanji}です。よろしくお願いします！",
#     phone_number: "08000001111",
#     age: rand(16..40).to_i,
#     email: Faker::Internet.email,
#     password: "111111",
#   )
# end