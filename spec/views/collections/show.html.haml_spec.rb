require 'spec_helper'

describe "collections/show.html.haml" do
  before(:each) do
    @collection = assign(:collection, stub_model(Collection,
      :name => "Name",
      :description => "Description",
      :theme => "Theme"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Theme/)
  end
end
