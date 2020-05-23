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

  describe '機能面のテスト' do
    before do
      @type = Type.create(
        name: Takarabako.open
      )

    end

    it '必要項目が存在していれば有効' do
      expect(@type).to be_valid
    end

    it 'nameが存在していなければ無効' do
      @type.name = ""
      expect(@type).not_to be_valid
    end
  end
end
