require 'spec_helper'

describe "clasps/show.html.haml" do
  before(:each) do
    @clasp = assign(:clasp, stub_model(Clasp,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
