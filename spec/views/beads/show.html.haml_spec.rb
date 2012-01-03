require 'spec_helper'

describe "beads/show.html.haml" do
  before(:each) do
    @bead = assign(:bead, stub_model(Bead,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
