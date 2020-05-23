require 'rails_helper'

RSpec.describe Participation, type: :model do
  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Participation.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
  
    context 'Eventモデルとの関係' do
      it 'N:1となっている' do
        expect(Participation.reflect_on_association(:event).macro).to eq :belongs_to
      end
    end
  
    context 'TeamDetailモデルとの関係' do
      it '1:Nとなっている' do
        expect(Participation.reflect_on_association(:team_details).macro).to eq :has_many
      end
    end
  end
end
