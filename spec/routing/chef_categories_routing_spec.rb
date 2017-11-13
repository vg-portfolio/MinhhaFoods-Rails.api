require "rails_helper"

RSpec.describe ChefCategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/chef_categories").to route_to("chef_categories#index")
    end

    it "routes to #new" do
      expect(:get => "/chef_categories/new").to route_to("chef_categories#new")
    end

    it "routes to #show" do
      expect(:get => "/chef_categories/1").to route_to("chef_categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/chef_categories/1/edit").to route_to("chef_categories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/chef_categories").to route_to("chef_categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/chef_categories/1").to route_to("chef_categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/chef_categories/1").to route_to("chef_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/chef_categories/1").to route_to("chef_categories#destroy", :id => "1")
    end

  end
end
