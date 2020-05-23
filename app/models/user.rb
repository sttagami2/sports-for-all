class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
            # presence: { message: "が入力されていません。"},
            # length: { maximum: 15, minimum: 1, message: "は1文字以上15文字以内です。"}
  validates :name_k, presence: true
  validates :email, uniqueness: true

  has_many :participations, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :resolutes, dependent: :destroy
  has_many :locations, dependent: :destroy  # フォローしているユーザを取り出す
  has_many :following_relationships, foreign_key: "follower_id", class_name: "Relationship", dependent: :destroy
  has_many :followings, through: :following_relationships

  # フォローされているユーザを取り出す
  has_many :follower_relationships, foreign_key: "following_id", class_name: "Relationship", dependent: :destroy
  has_many :followers, through: :follower_relationships

  mount_uploader :image, ImagesUploader

  # フォローしているか確認するメソッド
  def following?(other_user)
    following_relationships.find_by(following_id: other_user.id)
  end

  # フォローするメソッド
  def follow!(other_user)
    following_relationships.create!(following_id: other_user.id)
  end

  def unfollow!(other_user)
    following_relationships.find_by(following_id: other_user.id).destroy
  end

end
