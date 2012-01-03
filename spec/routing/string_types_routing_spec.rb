require "spec_helper"

describe StringTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/string_types").should route_to("string_types#index")
    end

    it "routes to #new" do
      get("/string_types/new").should route_to("string_types#new")
    end

    it "routes to #show" do
      get("/string_types/1").should route_to("string_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/string_types/1/edit").should route_to("string_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/string_types").should route_to("string_types#create")
    end

    it "routes to #update" do
      put("/string_types/1").should route_to("string_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/string_types/1").should route_to("string_types#destroy", :id => "1")
    end

  end
end
