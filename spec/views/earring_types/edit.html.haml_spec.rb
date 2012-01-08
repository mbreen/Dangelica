require 'spec_helper'

describe "earring_types/edit.html.haml" do
  before(:each) do
    @earring_type = assign(:earring_type, stub_model(EarringType,
      :name => "MyString"
    ))
  end

  it "renders the edit earring_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => earring_types_path(@earring_type), :method => "post" do
      assert_select "input#earring_type_name", :name => "earring_type[name]"
    end
  end
end
