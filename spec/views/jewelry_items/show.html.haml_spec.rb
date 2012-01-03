require 'spec_helper'

describe "jewelry_items/show.html.haml" do
  before(:each) do
    @jewelry_item = assign(:jewelry_item, stub_model(JewelryItem,
      :name => "Name",
      :size => 1,
      :earring_type => "Earring Type",
      :jewelry_type => nil,
      :price => 1.5,
      :string_type => nil,
      :clasp => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Earring Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
