require 'spec_helper'

describe "model_placements/show.html.haml" do
  before(:each) do
    @model_placement = assign(:model_placement, stub_model(ModelPlacement,
      :event => nil,
      :runway_model => nil,
      :jewelry_item => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
