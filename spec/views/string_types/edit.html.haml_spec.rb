require 'spec_helper'

describe "string_types/edit.html.haml" do
  before(:each) do
    @string_type = assign(:string_type, stub_model(StringType,
      :name => "MyString"
    ))
  end

  it "renders the edit string_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => string_types_path(@string_type), :method => "post" do
      assert_select "input#string_type_name", :name => "string_type[name]"
    end
  end
end
