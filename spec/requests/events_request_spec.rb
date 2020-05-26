require 'rails_helper'

RSpec.describe "Events", type: :request do

  before do
    @user = FactoryBot.create(:user)
    @event = FactoryBot.create(:event)
    @type = FactoryBot.create(:type)
    @eventnew = Event.new(
      type_id: @type.id,
      event_name: "#{Takarabako.name}イベント",
      introduction: Faker::Lorem.characters(number:30),
      start_date: Date.tomorrow,
      finish_date: Date.tomorrow+1,
      place_name: Gimei.town.kanji,
      address: Gimei.address.kanji,
      image: File.open('app/assets/images/sissors.png')
    )
    allow_any_instance_of(ApplicationController).to receive(:current_user) { @user }
  end

  context "GET /new" do
    it "game#newにアクセスできること" do
      get new_event_path
      expect(response).to have_http_status(:success)
    end
  end

  context "GET /index" do
    it "game#indexにアクセスできること" do
      get events_path
      expect(response).to have_http_status(:success)
    end
  end

  context "GET /edit" do
    it "game#editにアクセスできること" do
      get edit_event_path(@event)
      expect(response).to have_http_status(:success)
    end
  end

  context "GET /show" do
    it "game#showにアクセスできること" do
      get event_path(@event)
      expect(response).to have_http_status(:success)
    end
  end

  context "POST /create" do
    it "game#createにデータを保存できること" do
      post events_path
      expect(response).to have_http_status(:success)
    end
  end

  context "PATCH /update" do
    it "game#updateにてデータを更新できること" do
      patch event_path(@event)
      expect(response).to have_http_status(:success)
    end
  end
end
