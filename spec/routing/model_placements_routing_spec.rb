require "spec_helper"

describe ModelPlacementsController do
  describe "routing" do

    it "routes to #index" do
      get("/model_placements").should route_to("model_placements#index")
    end

    it "routes to #new" do
      get("/model_placements/new").should route_to("model_placements#new")
    end

    it "routes to #show" do
      get("/model_placements/1").should route_to("model_placements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/model_placements/1/edit").should route_to("model_placements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/model_placements").should route_to("model_placements#create")
    end

    it "routes to #update" do
      put("/model_placements/1").should route_to("model_placements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/model_placements/1").should route_to("model_placements#destroy", :id => "1")
    end

  end
end
