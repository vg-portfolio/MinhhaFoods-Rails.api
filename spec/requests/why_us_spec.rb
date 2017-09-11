require 'rails_helper'

RSpec.describe "WhyUs", type: :request do
  describe "GET /why_us" do
    it "works! (now write some real specs)" do
      get why_us_path
      expect(response).to have_http_status(200)
    end
  end
end
