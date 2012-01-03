require 'spec_helper'

describe "string_types/show.html.haml" do
  before(:each) do
    @string_type = assign(:string_type, stub_model(StringType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
