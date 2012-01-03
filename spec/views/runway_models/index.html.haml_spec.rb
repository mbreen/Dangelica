require 'spec_helper'

describe "runway_models/index.html.haml" do
  before(:each) do
    assign(:runway_models, [
      stub_model(RunwayModel,
        :name => "Name"
      ),
      stub_model(RunwayModel,
        :name => "Name"
      )
    ])
  end

  it "renders a list of runway_models" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
