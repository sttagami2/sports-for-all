require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:user)).to be_valid
  end

  # 名前がなければ無効な状態であること
  it "is invalid without a name" do
    user = FactoryBot.build(:user, name: nil)
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

  it "is invalid without an email address" do
    user = FactoryBot.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it "is invalid with a duplicate email address" do
    FactoryBot.create(:user, email: "tester@example.com")
    user = FactoryBot.build(:user, email: "tester@example.com")
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end

  describe 'アソシエーションのテスト' do
    context 'Participationモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:participations).macro).to eq :has_many
      end
    end

    context 'Commentモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:comments).macro).to eq :has_many
      end
    end

    context 'Resoluteモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:resolutes).macro).to eq :has_many
      end
    end

    context 'Locationモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:locations).macro).to eq :has_many
      end
    end

    context 'Followingモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:followings).macro).to eq :has_many
      end
    end

    context 'Followerモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:followers).macro).to eq :has_many
      end
    end
  end
end
