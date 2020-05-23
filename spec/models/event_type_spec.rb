require 'rails_helper'

RSpec.describe EventType, type: :model do
  describe 'アソシエーションのテスト' do
    context 'Eventモデルとの関係' do
      it 'N:1となっている' do
        expect(EventType.reflect_on_association(:event).macro).to eq :belongs_to
      end
    end
  
    context 'Typeモデルとの関係' do
      it '1:Nとなっている' do
        expect(EventType.reflect_on_association(:type).macro).to eq :belongs_to
      end
    end
  end
end
