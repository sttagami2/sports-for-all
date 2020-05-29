require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'アソシエーションのテスト' do
    context 'Participationモデルとの関係' do
      it '1:Nとなっている' do
        expect(Event.reflect_on_association(:participations).macro).to eq :has_many
      end
    end
  
    context 'Commentモデルとの関係' do
      it '1:Nとなっている' do
        expect(Event.reflect_on_association(:comments).macro).to eq :has_many
      end
    end
  
    context 'Teamモデルとの関係' do
      it '1:Nとなっている' do
        expect(Event.reflect_on_association(:teams).macro).to eq :has_many
      end
    end
  
    context 'Gameモデルとの関係' do
      it '1:Nとなっている' do
        expect(Event.reflect_on_association(:games).macro).to eq :has_many
      end
    end
  
    context 'Event_typeモデルとの関係' do
      it '1:Nとなっている' do
        expect(Event.reflect_on_association(:event_types).macro).to eq :has_many
      end
    end
  
    context 'Typeモデルとの関係' do
      it '1:Nとなっている' do
        expect(Event.reflect_on_association(:types).macro).to eq :has_many
      end
    end
  end

  describe '機能面のテスト' do
    before do
      @user = FactoryBot.create(:user)
      @type = FactoryBot.create(:type)
      @event = Event.new(
        user_id: @user.id,
        type_id: @type.id,
        event_name: "#{Takarabako.open}イベント",
        introduction: Faker::Lorem.characters(number:30),
        start_date: Date.tomorrow,
        finish_date: Date.tomorrow+1,
        place_name: Gimei.town.kanji,
        address: Gimei.address.kanji,
      )
    end
  
    it "必要項目が存在していれば有効" do
      expect(@event).to be_valid
    end
  
    it "type_idが存在していなければ無効" do
      @event.type_id = ""
      expect(@event).not_to be_valid
    end
  
    it "event_nameが存在していなければ無効" do
      @event.event_name = ""
      expect(@event).not_to be_valid
    end
  
    it "start_date(開催日時)が存在していなければ無効" do
      @event.start_date = ""
      expect(@event).not_to be_valid
    end

    it "finish_date(終了日時)が存在していなければ無効" do
      @event.finish_date = ""
      expect(@event).not_to be_valid
    end
  end

end
