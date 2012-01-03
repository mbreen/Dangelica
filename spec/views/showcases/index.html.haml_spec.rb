require 'spec_helper'

describe "showcases/index.html.haml" do
  before(:each) do
    assign(:showcases, [
      stub_model(Showcase,
        :name => "Name",
        :num_positions => 1,
        :location_description => "Location Description"
      ),
      stub_model(Showcase,
        :name => "Name",
        :num_positions => 1,
        :location_description => "Location Description"
      )
    ])
  end

  it "renders a list of showcases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location Description".to_s, :count => 2
  end
end
