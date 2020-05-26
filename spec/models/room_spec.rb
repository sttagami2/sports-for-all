require 'rails_helper'

RSpec.describe Room, type: :model do
  describe 'アソシエーションのテスト' do
    context 'Chatモデルとの関係' do
      it '1:Nとなっている' do
        expect(Room.reflect_on_association(:chats).macro).to eq :has_many
      end
    end
  
    context 'UserRoomモデルとの関係' do
      it '1:Nとなっている' do
        expect(Room.reflect_on_association(:user_rooms).macro).to eq :has_many
      end
    end
  end

  describe '機能面のテスト' do
    before do
      @room = FactoryBot.create(:room)
    end

    it '必要項目が存在していれば有効' do
      expect(@room).to be_valid
    end
  end
end
