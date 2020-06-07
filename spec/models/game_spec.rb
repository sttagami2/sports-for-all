require 'rails_helper'

RSpec.describe Game, type: :model do
  describe 'アソシエーションのテスト' do
    context 'Eventモデルとの関係' do
      it 'N:1となっている' do
        expect(Game.reflect_on_association(:event).macro).to eq :belongs_to
      end
    end

    context 'Eventモデルとの関係' do
      it 'N:1となっている' do
        expect(Game.reflect_on_association(:event).macro).to eq :belongs_to
      end
    end

    context 'Resoluteモデルとの関係' do
      it '1:Nとなっている' do
        expect(Game.reflect_on_association(:resolutes).macro).to eq :has_many
      end
    end
  end

  describe '機能面のテスト' do
    before do
      @event = FactoryBot.create(:event)
      @team1 = Team.create(
        event_id: @event.id,
        name: "#{Takarabako.open}"
      )
      @team2 = Team.create(
        event_id: @event.id,
        name: "#{Takarabako.open}"
      )
      @game = Game.new(
        event_id: @event.id,
        win_id: @team1.id,
        lose_id: @team2.id,
        win_score: 25,
        lose_score: 23,
      )
    end

    it "必要項目が存在していれば有効" do
      expect(@game).to be_valid
    end

    it "event_idが存在していなければ無効" do
      @game.event_id = ""
      expect(@game).not_to be_valid
    end

    it "win_idが存在していなければ無効" do
      @game.win_id = ""
      expect(@game).not_to be_valid
    end

    it "lose_idが存在していなければ無効" do
      @game.lose_id = ""
      expect(@game).not_to be_valid
    end

    it "win_scoreとlose_scoreが同値の場合無効" do
      @game.win_score = @game.lose_score
      expect(@game).not_to be_valid
    end
  end
end
