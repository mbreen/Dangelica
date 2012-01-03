require 'spec_helper'

describe "filler_beads/index.html.haml" do
  before(:each) do
    assign(:filler_beads, [
      stub_model(FillerBead,
        :name => "Name"
      ),
      stub_model(FillerBead,
        :name => "Name"
      )
    ])
  end

  it "renders a list of filler_beads" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
