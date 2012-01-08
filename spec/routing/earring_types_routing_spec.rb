require "spec_helper"

describe EarringTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/earring_types").should route_to("earring_types#index")
    end

    it "routes to #new" do
      get("/earring_types/new").should route_to("earring_types#new")
    end

    it "routes to #show" do
      get("/earring_types/1").should route_to("earring_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/earring_types/1/edit").should route_to("earring_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/earring_types").should route_to("earring_types#create")
    end

    it "routes to #update" do
      put("/earring_types/1").should route_to("earring_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/earring_types/1").should route_to("earring_types#destroy", :id => "1")
    end

  end
end
