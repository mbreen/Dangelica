require "spec_helper"

describe BeadsController do
  describe "routing" do

    it "routes to #index" do
      get("/beads").should route_to("beads#index")
    end

    it "routes to #new" do
      get("/beads/new").should route_to("beads#new")
    end

    it "routes to #show" do
      get("/beads/1").should route_to("beads#show", :id => "1")
    end

    it "routes to #edit" do
      get("/beads/1/edit").should route_to("beads#edit", :id => "1")
    end

    it "routes to #create" do
      post("/beads").should route_to("beads#create")
    end

    it "routes to #update" do
      put("/beads/1").should route_to("beads#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/beads/1").should route_to("beads#destroy", :id => "1")
    end

  end
end
