require 'rails_helper'

RSpec.describe "NewsPosts", type: :request do
  describe "GET /news_posts" do
    it "works! (now write some real specs)" do
      get news_posts_path
      expect(response).to have_http_status(200)
    end
  end
end
