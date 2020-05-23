require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Comment.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
  
    context 'Roomモデルとの関係' do
      it 'N:1となっている' do
        expect(Comment.reflect_on_association(:event).macro).to eq :belongs_to
      end
    end
  end

  describe '機能面のテスト' do
    before do
      @user = FactoryBot.create(:user)
      @event = FactoryBot.create(:event)
      @comment = Comment.new(
        user_id: @user.id,
        event_id: @event.id,
        comment: Faker::Lorem.characters(number:30)
      )
    end
  
    it "必要項目が存在していれば有効" do
      expect(@comment).to be_valid
    end
  
    it "user_idが存在していなければ無効" do
      @comment.user_id = ""
      expect(@comment).not_to be_valid
    end
  
    it "event_idが存在していなければ無効" do
      @comment.event_id = ""
      expect(@comment).not_to be_valid
    end
  
    it "commentがが存在していなければ無効" do
      @comment.comment = ""
      expect(@comment).not_to be_valid
    end
  end
end
