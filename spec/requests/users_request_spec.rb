require 'rails_helper'

RSpec.describe "Users", type: :request do

  describe "GET /show" do
    it "returns http success" do
      get user_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get edit_user_path(@user.id)
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      patch user_path
      expect(response).to have_http_status(:success)
    end
  end

end
