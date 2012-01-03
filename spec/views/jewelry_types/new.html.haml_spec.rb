require 'spec_helper'

describe "jewelry_types/new.html.haml" do
  before(:each) do
    assign(:jewelry_type, stub_model(JewelryType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new jewelry_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => jewelry_types_path, :method => "post" do
      assert_select "input#jewelry_type_name", :name => "jewelry_type[name]"
    end
  end
end
