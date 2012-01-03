require "spec_helper"

describe ClaspsController do
  describe "routing" do

    it "routes to #index" do
      get("/clasps").should route_to("clasps#index")
    end

    it "routes to #new" do
      get("/clasps/new").should route_to("clasps#new")
    end

    it "routes to #show" do
      get("/clasps/1").should route_to("clasps#show", :id => "1")
    end

    it "routes to #edit" do
      get("/clasps/1/edit").should route_to("clasps#edit", :id => "1")
    end

    it "routes to #create" do
      post("/clasps").should route_to("clasps#create")
    end

    it "routes to #update" do
      put("/clasps/1").should route_to("clasps#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/clasps/1").should route_to("clasps#destroy", :id => "1")
    end

  end
end
