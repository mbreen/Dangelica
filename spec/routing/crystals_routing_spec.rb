require "spec_helper"

describe CrystalsController do
  describe "routing" do

    it "routes to #index" do
      get("/crystals").should route_to("crystals#index")
    end

    it "routes to #new" do
      get("/crystals/new").should route_to("crystals#new")
    end

    it "routes to #show" do
      get("/crystals/1").should route_to("crystals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/crystals/1/edit").should route_to("crystals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/crystals").should route_to("crystals#create")
    end

    it "routes to #update" do
      put("/crystals/1").should route_to("crystals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/crystals/1").should route_to("crystals#destroy", :id => "1")
    end

  end
end
