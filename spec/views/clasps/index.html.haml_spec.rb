require 'spec_helper'

describe "clasps/index.html.haml" do
  before(:each) do
    assign(:clasps, [
      stub_model(Clasp,
        :name => "Name"
      ),
      stub_model(Clasp,
        :name => "Name"
      )
    ])
  end

  it "renders a list of clasps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
