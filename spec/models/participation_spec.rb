require 'rails_helper'

RSpec.describe Participation, type: :model do
  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Participation.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end

    context 'Eventモデルとの関係' do
      it 'N:1となっている' do
        expect(Participation.reflect_on_association(:event).macro).to eq :belongs_to
      end
    end

    context 'TeamDetailモデルとの関係' do
      it '1:Nとなっている' do
        expect(Participation.reflect_on_association(:team_details).macro).to eq :has_many
      end
    end
  end

  describe '機能面のテスト' do
    before do
      @user = FactoryBot.create(:user)
      @event = FactoryBot.create(:event)
      @participation = Participation.new(
        user_id: @user.id,
        event_id: @event.id,
        status: "参加"
      )
    end

    it "必要項目が存在していれば有効" do
      expect(@participation).to be_valid
    end

    it "user_idが存在していなければ無効" do
      @participation.user_id = ""
      expect(@participation).not_to be_valid
    end

    it "event_idが存在していなければ無効" do
      @participation.event_id = ""
      expect(@participation).not_to be_valid
    end

    it "statusが存在していなければ無効" do
      @participation.status = ""
      expect(@participation).not_to be_valid
    end
  end
end
