require 'rails_helper'

RSpec.describe Team, type: :model do
  describe 'アソシエーションのテスト' do
    context 'Eventモデルとの関係' do
      it 'N:1となっている' do
        expect(Team.reflect_on_association(:event).macro).to eq :belongs_to
      end
    end

    context 'GameDetailモデルとの関係' do
      it '1:Nとなっている' do
        expect(Team.reflect_on_association(:game_details).macro).to eq :has_many
      end
    end

    context 'TeamDetailモデルとの関係' do
      it '1:Nとなっている' do
        expect(Team.reflect_on_association(:game_details).macro).to eq :has_many
      end
    end
  end

  describe '機能面のテスト' do
    before do
      @event = FactoryBot.create(:event)
      @team = Team.new(
        event_id: @event.id,
        name: Takarabako.open
      )
    end

    it '必要項目が存在していれば有効' do
      expect(@team).to be_valid
    end

    it 'event_idが存在していなければ無効' do
      @team.event_id = ""
      expect(@team).not_to be_valid
    end

    it 'nameが存在していなければ無効' do
      @team.name = ""
      expect(@team).not_to be_valid
    end
  end
end
