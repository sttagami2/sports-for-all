require 'rails_helper'

RSpec.describe Resolute, type: :model do
  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Resolute.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
  
    context 'Gameモデルとの関係' do
      it 'N:1となっている' do
        expect(Resolute.reflect_on_association(:game).macro).to eq :belongs_to
      end
    end
  end

  describe '機能面のテスト' do
    before do
      @user = FactoryBot.create(:user)
      @event = FactoryBot.create(:event)
      @game = Game.create(
        event_id: @event.id,
        win_id: 1,
        lose_id: 2,
        win_score: 25,
        lose_score: 23,
      )
      @resolute = Resolute.new(
        user_id: @user.id,
        game_id: @game.id
      )
    end

    it '必要項目が存在していれば有効' do
      expect(@resolute).to be_valid
    end

    it 'user_idが存在していなければ無効' do
      @resolute.user_id = ""
      expect(@resolute).not_to be_valid
    end

    it 'game_idが存在していなければ無効' do
      @resolute.game_id = ""
      expect(@resolute).not_to be_valid
    end
  end
end
