require "spec_helper"

describe RunwayModelsController do
  describe "routing" do

    it "routes to #index" do
      get("/runway_models").should route_to("runway_models#index")
    end

    it "routes to #new" do
      get("/runway_models/new").should route_to("runway_models#new")
    end

    it "routes to #show" do
      get("/runway_models/1").should route_to("runway_models#show", :id => "1")
    end

    it "routes to #edit" do
      get("/runway_models/1/edit").should route_to("runway_models#edit", :id => "1")
    end

    it "routes to #create" do
      post("/runway_models").should route_to("runway_models#create")
    end

    it "routes to #update" do
      put("/runway_models/1").should route_to("runway_models#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/runway_models/1").should route_to("runway_models#destroy", :id => "1")
    end

  end
end
