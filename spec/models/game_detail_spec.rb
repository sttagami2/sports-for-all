require 'rails_helper'

RSpec.describe GameDetail, type: :model do
  describe 'アソシエーションのテスト' do
    context 'Teamモデルとの関係' do
      it 'N:1となっている' do
        expect(GameDetail.reflect_on_association(:team).macro).to eq :belongs_to
      end
    end
  
    context 'Gameモデルとの関係' do
      it 'N:1となっている' do
        expect(GameDetail.reflect_on_association(:game).macro).to eq :belongs_to
      end
    end
  end
end
