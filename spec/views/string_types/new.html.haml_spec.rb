require 'spec_helper'

describe "string_types/new.html.haml" do
  before(:each) do
    assign(:string_type, stub_model(StringType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new string_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => string_types_path, :method => "post" do
      assert_select "input#string_type_name", :name => "string_type[name]"
    end
  end
end
