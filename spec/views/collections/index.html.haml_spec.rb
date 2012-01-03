require 'spec_helper'

describe "collections/index.html.haml" do
  before(:each) do
    assign(:collections, [
      stub_model(Collection,
        :name => "Name",
        :description => "Description",
        :theme => "Theme"
      ),
      stub_model(Collection,
        :name => "Name",
        :description => "Description",
        :theme => "Theme"
      )
    ])
  end

  it "renders a list of collections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Theme".to_s, :count => 2
  end
end
