require "spec_helper"

describe JewelryItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/jewelry_items").should route_to("jewelry_items#index")
    end

    it "routes to #new" do
      get("/jewelry_items/new").should route_to("jewelry_items#new")
    end

    it "routes to #show" do
      get("/jewelry_items/1").should route_to("jewelry_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/jewelry_items/1/edit").should route_to("jewelry_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/jewelry_items").should route_to("jewelry_items#create")
    end

    it "routes to #update" do
      put("/jewelry_items/1").should route_to("jewelry_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/jewelry_items/1").should route_to("jewelry_items#destroy", :id => "1")
    end

  end
end
