require 'spec_helper'

describe "stones/show.html.haml" do
  before(:each) do
    @stone = assign(:stone, stub_model(Stone,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
