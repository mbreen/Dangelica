require 'spec_helper'

describe "jewelry_items/index.html.haml" do
  before(:each) do
    assign(:jewelry_items, [
      stub_model(JewelryItem,
        :name => "Name",
        :size => 1,
        :earring_type => "Earring Type",
        :jewelry_type => nil,
        :price => 1.5,
        :string_type => nil,
        :clasp => nil
      ),
      stub_model(JewelryItem,
        :name => "Name",
        :size => 1,
        :earring_type => "Earring Type",
        :jewelry_type => nil,
        :price => 1.5,
        :string_type => nil,
        :clasp => nil
      )
    ])
  end

  it "renders a list of jewelry_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Earring Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
