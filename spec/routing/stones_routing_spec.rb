require "spec_helper"

describe StonesController do
  describe "routing" do

    it "routes to #index" do
      get("/stones").should route_to("stones#index")
    end

    it "routes to #new" do
      get("/stones/new").should route_to("stones#new")
    end

    it "routes to #show" do
      get("/stones/1").should route_to("stones#show", :id => "1")
    end

    it "routes to #edit" do
      get("/stones/1/edit").should route_to("stones#edit", :id => "1")
    end

    it "routes to #create" do
      post("/stones").should route_to("stones#create")
    end

    it "routes to #update" do
      put("/stones/1").should route_to("stones#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/stones/1").should route_to("stones#destroy", :id => "1")
    end

  end
end
