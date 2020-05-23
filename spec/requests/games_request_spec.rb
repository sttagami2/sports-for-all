require 'rails_helper'

RSpec.describe "Games", type: :request do

  describe "GET /index" do
    it "game#indexにアクセスできること" do
      get event_games_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /halfway" do
    it "game#halfwayにアクセスできること" do
      get halfway_event_games_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /halfway" do
    it "game#halfwayにてデータを送信できること" do
      post halfway_event_games_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "game#newにアクセスできること" do
      get new_event_game_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "game#createにてデータを保存できること" do
      post event_games_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "game#editにアクセスできること" do
      get edit_event_game_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "game#updateにてデータを更新できること" do
      patch event_game_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get event_game_path
      expect(response).to have_http_status(:success)
    end
  end

end
