require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'アソシエーションのテスト' do
    context 'Participationモデルとの関係' do
      it '1:Nとなっている' do
        expect(Event.reflect_on_association(:participations).macro).to eq :has_many
      end
    end
  
    context 'Commentモデルとの関係' do
      it '1:Nとなっている' do
        expect(Event.reflect_on_association(:comments).macro).to eq :has_many
      end
    end
  
    context 'Teamモデルとの関係' do
      it '1:Nとなっている' do
        expect(Event.reflect_on_association(:teams).macro).to eq :has_many
      end
    end
  
    context 'Gameモデルとの関係' do
      it '1:Nとなっている' do
        expect(Event.reflect_on_association(:games).macro).to eq :has_many
      end
    end
  
    context 'Event_typeモデルとの関係' do
      it '1:Nとなっている' do
        expect(Event.reflect_on_association(:event_types).macro).to eq :has_many
      end
    end
  
    context 'Typeモデルとの関係' do
      it '1:Nとなっている' do
        expect(Event.reflect_on_association(:types).macro).to eq :has_many
      end
    end
  end
end
