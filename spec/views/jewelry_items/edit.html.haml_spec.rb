require 'spec_helper'

describe "jewelry_items/edit.html.haml" do
  before(:each) do
    @jewelry_item = assign(:jewelry_item, stub_model(JewelryItem,
      :name => "MyString",
      :size => 1,
      :earring_type => "MyString",
      :jewelry_type => nil,
      :price => 1.5,
      :string_type => nil,
      :clasp => nil
    ))
  end

  it "renders the edit jewelry_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => jewelry_items_path(@jewelry_item), :method => "post" do
      assert_select "input#jewelry_item_name", :name => "jewelry_item[name]"
      assert_select "input#jewelry_item_size", :name => "jewelry_item[size]"
      assert_select "input#jewelry_item_earring_type", :name => "jewelry_item[earring_type]"
      assert_select "input#jewelry_item_jewelry_type", :name => "jewelry_item[jewelry_type]"
      assert_select "input#jewelry_item_price", :name => "jewelry_item[price]"
      assert_select "input#jewelry_item_string_type", :name => "jewelry_item[string_type]"
      assert_select "input#jewelry_item_clasp", :name => "jewelry_item[clasp]"
    end
  end
end
