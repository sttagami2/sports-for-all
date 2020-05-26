require 'rails_helper'

RSpec.describe Chat, type: :model do
  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Chat.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
  
    context 'Roomモデルとの関係' do
      it 'N:1となっている' do
        expect(Chat.reflect_on_association(:room).macro).to eq :belongs_to
      end
    end
  end

  describe '機能面のテスト' do
    before do
      @chat = FactoryBot.create(:chat)
    end
  
    it "必要項目が存在すれば有効" do
      expect(@chat).to be_valid
    end
    
    it "user_idが存在しなかったら無効" do
      @chat.user_id = ""
      expect(@chat).not_to be_valid
    end
    
    it "room_idが存在しなかったら無効" do
      @chat.room_id = ""
      expect(@chat).not_to be_valid
    end

    it "contentが存在しなかったら無効" do
      @chat.content = ""
      expect(@chat).not_to be_valid
    end
  end
end
