require "open-uri"
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts '"users"のデータを作成します'

User.create!(
  name: "田上",
  name_k: "タガミ",
  image: File.open('app/assets/images/shoto.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "田上です。よろしくお願いします！ごちゃまぜバレー部の幹事をしております。",
  email: "a@gmail.com",
  password: "111111"
)

User.create!(
  name: "たいち",
  name_k: "タイチ",
  image: File.open('app/assets/images/taichi.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "たいちです。よろしくお願いします！ごちゃまぜバレー部のオリジナルシャツを作ったり、合宿を計画したりしてます！",
  email: "k@gmail.com",
  password: "111111"
)

User.create!(
  name: "ウィリアム",
  name_k: "ウィリアム",
  image: File.open('app/assets/images/will.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "ウィリアムです。よろしくお願いします！肩幅がとても自慢です。ショルダーアタックが特技です。",
  email: "i@gmail.com",
  password: "111111"
)

User.create!(
  name: "がま",
  name_k: "オザワ",
  image: File.open('app/assets/images/ozawa.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "がまです。よろしくお願いします！ダイエット頑張ってますが、痩せれません。",
  email: "j@gmail.com",
  password: "111111"
)

User.create!(
  name: "太田",
  name_k: "オオタ",
  image: File.open('app/assets/images/ota.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "太田です。よろしくお願いします！周りが笑ってくれることが何よりも嬉しく思います！",
  email: "o@gmail.com",
  password: "111111"
)

User.create!(
  name: "おか",
  name_k: "オカ",
  image: File.open('app/assets/images/oka.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "岡です。よろしくお願いします！興奮のあまり奇声をあげてしまう場合があります。",
  email: "l@gmail.com",
  password: "111111"
)

User.create!(
  name: "けんしょー",
  name_k: "ケンショウ",
  image: File.open('app/assets/images/kensho.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "けんしょーです。よろしくお願いします！鼻が特徴的です！",
  email: "d@gmail.com",
  password: "111111"
)

User.create!(
  name: "さおりん",
  name_k: "サオリ",
  image: File.open('app/assets/images/saori.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "さおりんです。よろしくお願いします！",
  email: "g@gmail.com",
  password: "111111"
)

User.create!(
  name: "たえ",
  name_k: "タエ",
  image: File.open('app/assets/images/tae.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "たえです。よろしくお願いします！",
  email: "h@gmail.com",
  password: "111111"
)

User.create!(
  name: "おさむ",
  name_k: "オサム",
  image: File.open('app/assets/images/osamu.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "おさむです。よろしくお願いします！あだ名はピロティーです。ちなみにオサムもあだ名です。",
  email: "e@gmail.com",
  password: "111111"
)

User.create!(
  name: "ゆーき",
  name_k: "ユウキ",
  image: File.open('app/assets/images/yuki.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "ゆーきです。よろしくお願いします！",
  email: "b@gmail.com",
  password: "111111"
)

User.create!(
  name: "みすず",
  name_k: "ミスズ",
  image: File.open('app/assets/images/misuzu.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "みすずです。よろしくお願いします！",
  email: "c@gmail.com",
  password: "111111"
)

User.create!(
  name: "りさ",
  name_k: "リサ",
  image: File.open('app/assets/images/risa.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "りさです。よろしくお願いします！",
  email: "f@gmail.com",
  password: "111111"
)


User.create!(
  name: "岡ちゃん",
  name_k: "オカチャン",
  image: File.open('app/assets/images/hiroki.jpg'),
  phone_number: "09099991111",
  age: 24,
  introduction: "岡ちゃんです。よろしくお願いします！ナオトインティライミリスペクトです。",
  email: "m@gmail.com",
  password: "111111"
)

50.times do
  gimei = Gimei.new
  
  User.create!(
    name: gimei.name.kanji,
    name_k: gimei.name.hiragana,
    image: File.open('app/assets/images/sissors.png'),
    introduction: "#{gimei.name.kanji}です。よろしくお願いします！",
    phone_number: "08000001111",
    age: rand(16..40).to_i,
    email: Faker::Internet.email,
    password: "111111",
  )
end