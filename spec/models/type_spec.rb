require 'rails_helper'

RSpec.describe Type, type: :model do
  describe 'アソシエーションのテスト' do
    context 'EventTypeモデルとの関係' do
      it '1:Nとなっている' do
        expect(Type.reflect_on_association(:event_types).macro).to eq :has_many
      end
    end
  
    context 'Eventモデルとの関係' do
      it '1:Nとなっている' do
        expect(Type.reflect_on_association(:events).macro).to eq :has_many
      end
    end
  end
end
