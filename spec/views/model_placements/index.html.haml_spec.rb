require 'spec_helper'

describe "model_placements/index.html.haml" do
  before(:each) do
    assign(:model_placements, [
      stub_model(ModelPlacement,
        :event => nil,
        :runway_model => nil,
        :jewelry_item => nil
      ),
      stub_model(ModelPlacement,
        :event => nil,
        :runway_model => nil,
        :jewelry_item => nil
      )
    ])
  end

  it "renders a list of model_placements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
