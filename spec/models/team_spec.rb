require 'rails_helper'

RSpec.describe Team, type: :model do
  describe 'アソシエーションのテスト' do
    context 'Eventモデルとの関係' do
      it 'N:1となっている' do
        expect(Team.reflect_on_association(:event).macro).to eq :belongs_to
      end
    end
  
    context 'GameDetailモデルとの関係' do
      it '1:Nとなっている' do
        expect(Team.reflect_on_association(:game_details).macro).to eq :has_many
      end
    end

    context 'TeamDetailモデルとの関係' do
      it '1:Nとなっている' do
        expect(Team.reflect_on_association(:game_details).macro).to eq :has_many
      end
    end
  end
end
