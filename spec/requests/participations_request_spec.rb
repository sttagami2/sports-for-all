require 'rails_helper'

RSpec.describe "Participations", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/participations/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/participations/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/participations/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/participations/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/participations/show"
      expect(response).to have_http_status(:success)
    end
  end
end
