require 'spec_helper'

describe "runway_models/show.html.haml" do
  before(:each) do
    @runway_model = assign(:runway_model, stub_model(RunwayModel,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
