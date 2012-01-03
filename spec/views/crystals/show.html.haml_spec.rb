require 'spec_helper'

describe "crystals/show.html.haml" do
  before(:each) do
    @crystal = assign(:crystal, stub_model(Crystal,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
