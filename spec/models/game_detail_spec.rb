require 'rails_helper'

RSpec.describe GameDetail, type: :model do
  describe 'アソシエーションのテスト' do
    context 'Teamモデルとの関係' do
      it 'N:1となっている' do
        expect(GameDetail.reflect_on_association(:team).macro).to eq :belongs_to
      end
    end
  
    context 'Gameモデルとの関係' do
      it 'N:1となっている' do
        expect(GameDetail.reflect_on_association(:game).macro).to eq :belongs_to
      end
    end
  end

  describe '機能面のテスト' do
    before do
      @event = FactoryBot.create(:event)
      @game = Game.create(
        event_id: @event.id,
        win_id: 1,
        lose_id: 2,
        win_score: 25,
        lose_score: 23,
      )
      @team = FactoryBot.create(:team)
      @game_detail = GameDetail.new(
        game_id: @game.id,
        team_id: @team.id,
      )
    end
  
    it "必要項目が存在していれば有効" do
      expect(@game_detail).to be_valid
    end
  
    it "game_idが存在していなければ無効" do
      @game_detail.game_id = ""
      expect(@game_detail).not_to be_valid
    end
  
    it "team_idが存在していなければ無効" do
      @game_detail.team_id = ""
      expect(@game_detail).not_to be_valid
    end
  end
end
