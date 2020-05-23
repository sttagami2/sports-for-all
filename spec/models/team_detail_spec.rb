require 'rails_helper'

RSpec.describe TeamDetail, type: :model do
  describe 'アソシエーションのテスト' do
    context 'Teamモデルとの関係' do
      it 'N:1となっている' do
        expect(TeamDetail.reflect_on_association(:team).macro).to eq :belongs_to
      end
    end
  
    context 'Roomモデルとの関係' do
      it 'N:1となっている' do
        expect(TeamDetail.reflect_on_association(:participation).macro).to eq :belongs_to
      end
    end
  end
end
