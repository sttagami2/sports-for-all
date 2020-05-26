require 'rails_helper'

RSpec.describe EventType, type: :model do
  # describe 'アソシエーションのテスト' do
  #   context 'Eventモデルとの関係' do
  #     it 'N:1となっている' do
  #       expect(EventType.reflect_on_association(:event).macro).to eq :belongs_to
  #     end
  #   end
  
  #   context 'Typeモデルとの関係' do
  #     it '1:Nとなっている' do
  #       expect(EventType.reflect_on_association(:type).macro).to eq :belongs_to
  #     end
  #   end
  # end

  # describe '機能面のテスト' do
  #   before do
  #     @event = FactoryBot.create(:event)
  #     @type = FactoryBot.create(:type)
  #     @event_type = EventType.create(
  #       event_id: @event.id,
  #       type_id: @type.id,
  #     )
  #   end
  
  #   it "必要項目が存在していれば有効" do
  #     expect(@event_type).to be_valid
  #   end
  
  #   it "type_idが存在していなければ無効" do
  #     @event_type.type_id = ""
  #     expect(@event_type).not_to be_valid
  #   end
  
  #   it "event_idが存在していなければ無効" do
  #     @event_type.event_id = ""
  #     expect(@event_type).not_to be_valid
  #   end
  
  #   it "event_typeがが存在していなければ無効" do
  #     @event_type.event_type = ""
  #     expect(@event_type).not_to be_valid
  #   end
  # end
end
