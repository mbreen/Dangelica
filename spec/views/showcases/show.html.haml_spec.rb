require 'spec_helper'

describe "showcases/show.html.haml" do
  before(:each) do
    @showcase = assign(:showcase, stub_model(Showcase,
      :name => "Name",
      :num_positions => 1,
      :location_description => "Location Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Location Description/)
  end
end
