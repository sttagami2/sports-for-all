require 'rails_helper'

RSpec.describe Relationship, type: :model do
  describe 'アソシエーションのテスト' do
    context 'Followerモデルとの関係' do
      it 'N:1となっている' do
        expect(Relationship.reflect_on_association(:follower).macro).to eq :belongs_to
      end
    end
  
    context 'Followingモデルとの関係' do
      it 'N:1となっている' do
        expect(Relationship.reflect_on_association(:following).macro).to eq :belongs_to
      end
    end
  end

  describe '機能面のテスト' do
    before do
      user = FactoryBot.create(:user)
      other_user = FactoryBot.create(:other_user)
      @relationship = Relationship.new(following_id: user.id, follower_id: other_user.id)
    end

    it '相互フォローしている場合有効' do
      expect(@relationship).to be_valid
    end

    it 'follower_idがない場合無効' do
      @relationship.follower_id = ""
      expect(@relationship).not_to be_valid
    end

    it 'following_idがない場合無効' do
      @relationship.following_id = ""
      expect(@relationship).not_to be_valid
    end

  end
end
