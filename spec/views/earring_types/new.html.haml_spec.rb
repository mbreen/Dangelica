require 'spec_helper'

describe "earring_types/new.html.haml" do
  before(:each) do
    assign(:earring_type, stub_model(EarringType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new earring_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => earring_types_path, :method => "post" do
      assert_select "input#earring_type_name", :name => "earring_type[name]"
    end
  end
end
