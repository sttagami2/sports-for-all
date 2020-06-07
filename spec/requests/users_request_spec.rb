require 'rails_helper'

RSpec.describe "Users", type: :request do
  before do
    @user = FactoryBot.create(:user)
    @event = FactoryBot.create(:event)
    @participations = Participation.create(
      user_id: @user.id,
      event_id: @event.id,
      status: "参加"
    )
    allow_any_instance_of(ApplicationController).to receive(:current_user) { @user }
  end

  describe "GET /show" do
    it "returns http success" do
      get user_path(@user.id)
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get edit_user_path(@user.id)
      expect(response).to have_http_status(:success)
    end
  end

  describe "PATCH /update" do
    it "returns http success" do
      patch user_path(@user)
      expect(response).to have_http_status(:success)
    end
  end
end
