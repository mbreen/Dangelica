require 'spec_helper'

describe "filler_beads/show.html.haml" do
  before(:each) do
    @filler_bead = assign(:filler_bead, stub_model(FillerBead,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
