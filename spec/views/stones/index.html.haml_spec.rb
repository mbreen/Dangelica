require 'spec_helper'

describe "stones/index.html.haml" do
  before(:each) do
    assign(:stones, [
      stub_model(Stone,
        :name => "Name"
      ),
      stub_model(Stone,
        :name => "Name"
      )
    ])
  end

  it "renders a list of stones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
