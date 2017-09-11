require "rails_helper"

RSpec.describe ProductSectionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/product_sections").to route_to("product_sections#index")
    end

    it "routes to #new" do
      expect(:get => "/product_sections/new").to route_to("product_sections#new")
    end

    it "routes to #show" do
      expect(:get => "/product_sections/1").to route_to("product_sections#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/product_sections/1/edit").to route_to("product_sections#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/product_sections").to route_to("product_sections#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/product_sections/1").to route_to("product_sections#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/product_sections/1").to route_to("product_sections#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/product_sections/1").to route_to("product_sections#destroy", :id => "1")
    end

  end
end
