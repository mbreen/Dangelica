require 'spec_helper'

describe "earring_types/index.html.haml" do
  before(:each) do
    assign(:earring_types, [
      stub_model(EarringType,
        :name => "Name"
      ),
      stub_model(EarringType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of earring_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
