require 'rails_helper'

RSpec.describe "ChefCategories", type: :request do
  describe "GET /chef_categories" do
    it "works! (now write some real specs)" do
      get chef_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
