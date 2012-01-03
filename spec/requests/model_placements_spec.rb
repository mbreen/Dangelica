require 'spec_helper'

describe "ModelPlacements" do
  describe "GET /model_placements" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get model_placements_path
      response.status.should be(200)
    end
  end
end
