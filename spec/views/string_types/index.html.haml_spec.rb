require 'spec_helper'

describe "string_types/index.html.haml" do
  before(:each) do
    assign(:string_types, [
      stub_model(StringType,
        :name => "Name"
      ),
      stub_model(StringType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of string_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
