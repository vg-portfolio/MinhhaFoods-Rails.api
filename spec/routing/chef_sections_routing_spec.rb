require "rails_helper"

RSpec.describe ChefSectionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/chef_sections").to route_to("chef_sections#index")
    end

    it "routes to #new" do
      expect(:get => "/chef_sections/new").to route_to("chef_sections#new")
    end

    it "routes to #show" do
      expect(:get => "/chef_sections/1").to route_to("chef_sections#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/chef_sections/1/edit").to route_to("chef_sections#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/chef_sections").to route_to("chef_sections#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/chef_sections/1").to route_to("chef_sections#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/chef_sections/1").to route_to("chef_sections#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/chef_sections/1").to route_to("chef_sections#destroy", :id => "1")
    end

  end
end
