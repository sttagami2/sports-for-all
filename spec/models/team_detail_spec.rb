require 'rails_helper'

RSpec.describe TeamDetail, type: :model do
  describe 'アソシエーションのテスト' do
    context 'Teamモデルとの関係' do
      it 'N:1となっている' do
        expect(TeamDetail.reflect_on_association(:team).macro).to eq :belongs_to
      end
    end

    context 'Roomモデルとの関係' do
      it 'N:1となっている' do
        expect(TeamDetail.reflect_on_association(:participation).macro).to eq :belongs_to
      end
    end
  end

  describe '機能面のテスト' do
    before do
      @user = FactoryBot.create(:user)
      @event = FactoryBot.create(:event)
      @team = Team.create(
        event_id: @event.id,
        name: Takarabako.open
      )
      @participation = Participation.create(
        user_id: @user.id,
        event_id: @event.id,
        status: "参加"
      )
      @team_detail = TeamDetail.new(
        team_id: @team.id,
        participation_id: @participation.id
      )
    end

    it '必要項目が存在していれば有効' do
      expect(@team_detail).to be_valid
    end

    it 'team_idが存在していなければ無効' do
      @team_detail.team_id = ""
      expect(@team_detail).not_to be_valid
    end

    it 'participation_idが存在していなければ無効' do
      @team_detail.participation_id = ""
      expect(@team_detail).not_to be_valid
    end
  end
end
