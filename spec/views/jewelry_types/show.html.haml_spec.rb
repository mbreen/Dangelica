require 'spec_helper'

describe "jewelry_types/show.html.haml" do
  before(:each) do
    @jewelry_type = assign(:jewelry_type, stub_model(JewelryType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
