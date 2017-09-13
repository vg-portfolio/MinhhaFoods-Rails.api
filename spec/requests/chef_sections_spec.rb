require 'rails_helper'

RSpec.describe "ChefSections", type: :request do
  describe "GET /chef_sections" do
    it "works! (now write some real specs)" do
      get chef_sections_path
      expect(response).to have_http_status(200)
    end
  end
end
