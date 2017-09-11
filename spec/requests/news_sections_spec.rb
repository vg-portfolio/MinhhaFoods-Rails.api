require 'rails_helper'

RSpec.describe "NewsSections", type: :request do
  describe "GET /news_sections" do
    it "works! (now write some real specs)" do
      get news_sections_path
      expect(response).to have_http_status(200)
    end
  end
end
