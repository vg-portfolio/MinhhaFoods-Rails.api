require "rails_helper"

RSpec.describe WhyUsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/why_us").to route_to("why_us#index")
    end

    it "routes to #new" do
      expect(:get => "/why_us/new").to route_to("why_us#new")
    end

    it "routes to #show" do
      expect(:get => "/why_us/1").to route_to("why_us#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/why_us/1/edit").to route_to("why_us#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/why_us").to route_to("why_us#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/why_us/1").to route_to("why_us#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/why_us/1").to route_to("why_us#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/why_us/1").to route_to("why_us#destroy", :id => "1")
    end

  end
end
