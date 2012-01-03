require "spec_helper"

describe FillerBeadsController do
  describe "routing" do

    it "routes to #index" do
      get("/filler_beads").should route_to("filler_beads#index")
    end

    it "routes to #new" do
      get("/filler_beads/new").should route_to("filler_beads#new")
    end

    it "routes to #show" do
      get("/filler_beads/1").should route_to("filler_beads#show", :id => "1")
    end

    it "routes to #edit" do
      get("/filler_beads/1/edit").should route_to("filler_beads#edit", :id => "1")
    end

    it "routes to #create" do
      post("/filler_beads").should route_to("filler_beads#create")
    end

    it "routes to #update" do
      put("/filler_beads/1").should route_to("filler_beads#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/filler_beads/1").should route_to("filler_beads#destroy", :id => "1")
    end

  end
end
