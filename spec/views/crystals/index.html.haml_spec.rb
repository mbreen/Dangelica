require 'spec_helper'

describe "crystals/index.html.haml" do
  before(:each) do
    assign(:crystals, [
      stub_model(Crystal,
        :name => "Name"
      ),
      stub_model(Crystal,
        :name => "Name"
      )
    ])
  end

  it "renders a list of crystals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
