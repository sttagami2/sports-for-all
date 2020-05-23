require 'rails_helper'

RSpec.describe UserRoom, type: :model do
  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(UserRoom.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
  
    context 'Roomモデルとの関係' do
      it 'N:1となっている' do
        expect(UserRoom.reflect_on_association(:room).macro).to eq :belongs_to
      end
    end
  end

  describe '機能面のテスト' do
    before do
      @user = FactoryBot.create(:user)
      @room = FactoryBot.create(:room)
      @user_room = UserRoom.new(
        user_id: @user.id,
        room_id: @room.id
      )

    end

    it '必要項目が存在していれば有効' do
      expect(@user_room).to be_valid
    end

    it 'user_idが存在していなければ無効' do
      @user_room.user_id = ""
      expect(@user_room).not_to be_valid
    end

    it 'room_idが存在していなければ無効' do
      @user_room.room_id = ""
      expect(@user_room).not_to be_valid
    end
  end
end
