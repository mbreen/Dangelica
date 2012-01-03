require 'spec_helper'

describe "showcase_placements/index.html.haml" do
  before(:each) do
    assign(:showcase_placements, [
      stub_model(ShowcasePlacement,
        :showcase => nil,
        :jewelry_item => nil
      ),
      stub_model(ShowcasePlacement,
        :showcase => nil,
        :jewelry_item => nil
      )
    ])
  end

  it "renders a list of showcase_placements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
