require 'spec_helper'

describe "crystals/new.html.haml" do
  before(:each) do
    assign(:crystal, stub_model(Crystal,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new crystal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => crystals_path, :method => "post" do
      assert_select "input#crystal_name", :name => "crystal[name]"
    end
  end
end
