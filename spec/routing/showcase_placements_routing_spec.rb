require "spec_helper"

describe ShowcasePlacementsController do
  describe "routing" do

    it "routes to #index" do
      get("/showcase_placements").should route_to("showcase_placements#index")
    end

    it "routes to #new" do
      get("/showcase_placements/new").should route_to("showcase_placements#new")
    end

    it "routes to #show" do
      get("/showcase_placements/1").should route_to("showcase_placements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/showcase_placements/1/edit").should route_to("showcase_placements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/showcase_placements").should route_to("showcase_placements#create")
    end

    it "routes to #update" do
      put("/showcase_placements/1").should route_to("showcase_placements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/showcase_placements/1").should route_to("showcase_placements#destroy", :id => "1")
    end

  end
end
