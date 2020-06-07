require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "GET /top" do
    it "トップページにアクセスできること" do
      get root_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /about" do
    it "Aboutページにアクセスできること" do
      get home_about_path
      expect(response).to have_http_status(:success)
    end
  end
end
