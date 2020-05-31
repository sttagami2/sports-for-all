require 'rails_helper'

RSpec.describe "Games", type: :request do
  before do
    @user = FactoryBot.create(:user)
    @type = FactoryBot.create(:type)
    @event = Event.create(
      user_id: @user.id,
      type_id: @type.id,
      event_name: "#{Takarabako.name}イベント",
      introduction: Faker::Lorem.characters(number:30),
      start_date: Time.zone.now,
      finish_date: Time.zone.tomorrow,
      place_name: Gimei.town.kanji,
      address: Gimei.address.kanji,
      image: File.open('app/assets/images/sissors.png')
    )
    @eventnew = Event.new(
      user_id: @user.id,
      type_id: @type.id,
      event_name: "#{Takarabako.name}イベント",
      introduction: Faker::Lorem.characters(number:30),
      start_date: Time.zone.now,
      finish_date: Time.zone.tomorrow,
      place_name: Gimei.town.kanji,
      address: Gimei.address.kanji,
      image: File.open('app/assets/images/sissors.png')
    )
    @team1 = Team.create(
      event_id: @event.id,
      name: "#{Takarabako.open}"
    )
    @team2 = Team.create(
      event_id: @event.id,
      name: "#{Takarabako.open}"
    )
    @game = Game.create(
      event_id: @event.id,
      win_id: @team1.id,
      lose_id: @team2.id,
      win_score: 25,
      lose_score: 23,
    )
    @member1 = Participation.create(
      user_id: FactoryBot.create(:user).id,
      event_id: @event.id,
      status: "参加"
    )
    @member2 = Participation.create(
      user_id: FactoryBot.create(:user).id,
      event_id: @event.id,
      status: "参加"
    )
    allow_any_instance_of(ApplicationController).to receive(:current_user) { @user }
  end
  describe "GET /index" do
    it "game#indexにアクセスできること" do
      get event_games_path(event_id: @game.event_id)
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /halfway" do
    it "game#halfwayにてデータを送信できること" do
      post halfway_event_games_path(event_id: @game.event_id)
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "game#newにアクセスできること" do
      get new_event_game_path(event_id: @game.event_id)
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "game#createにてデータを保存できること" do
      post event_games_path(event_id: @game.event_id)
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "game#editにアクセスできること" do
      get edit_event_game_path(event_id: @game.event_id, id: @game.id)
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "game#updateにてデータを更新できること" do
      patch event_game_path(event_id: @game.event_id, id: @game.id)
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get event_game_path(event_id: @game.event_id, id: @game.id)
      expect(response).to have_http_status(:success)
    end
  end

end
