require 'spec_helper'

describe "jewelry_types/index.html.haml" do
  before(:each) do
    assign(:jewelry_types, [
      stub_model(JewelryType,
        :name => "Name"
      ),
      stub_model(JewelryType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of jewelry_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
