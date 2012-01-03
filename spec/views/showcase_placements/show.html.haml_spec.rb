require 'spec_helper'

describe "showcase_placements/show.html.haml" do
  before(:each) do
    @showcase_placement = assign(:showcase_placement, stub_model(ShowcasePlacement,
      :showcase => nil,
      :jewelry_item => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
