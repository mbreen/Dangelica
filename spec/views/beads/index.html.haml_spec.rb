require 'spec_helper'

describe "beads/index.html.haml" do
  before(:each) do
    assign(:beads, [
      stub_model(Bead,
        :name => "Name"
      ),
      stub_model(Bead,
        :name => "Name"
      )
    ])
  end

  it "renders a list of beads" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
