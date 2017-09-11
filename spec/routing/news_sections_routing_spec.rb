require "rails_helper"

RSpec.describe NewsSectionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/news_sections").to route_to("news_sections#index")
    end

    it "routes to #new" do
      expect(:get => "/news_sections/new").to route_to("news_sections#new")
    end

    it "routes to #show" do
      expect(:get => "/news_sections/1").to route_to("news_sections#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/news_sections/1/edit").to route_to("news_sections#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/news_sections").to route_to("news_sections#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/news_sections/1").to route_to("news_sections#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/news_sections/1").to route_to("news_sections#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/news_sections/1").to route_to("news_sections#destroy", :id => "1")
    end

  end
end
