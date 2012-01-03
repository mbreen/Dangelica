require 'spec_helper'

describe "clasps/new.html.haml" do
  before(:each) do
    assign(:clasp, stub_model(Clasp,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new clasp form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clasps_path, :method => "post" do
      assert_select "input#clasp_name", :name => "clasp[name]"
    end
  end
end
