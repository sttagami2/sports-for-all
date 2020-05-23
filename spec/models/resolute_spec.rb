require 'rails_helper'

RSpec.describe Resolute, type: :model do
  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Resolute.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
  
    context 'Gameモデルとの関係' do
      it 'N:1となっている' do
        expect(Resolute.reflect_on_association(:game).macro).to eq :belongs_to
      end
    end
  end
end
