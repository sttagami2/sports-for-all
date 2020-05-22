class Game < ApplicationRecord
  belongs_to :event
  has_many :game_details, dependent: :destroy
  has_many :resolutes, dependent: :destroy

  # validates :win_score,
  #           :numericality => {
  #             :greater_than => :lose_score,
  #             :message => '点数は同じ値を入力しないで下さい。'
  #           }

end
