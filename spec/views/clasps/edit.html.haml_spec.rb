require 'spec_helper'

describe "clasps/edit.html.haml" do
  before(:each) do
    @clasp = assign(:clasp, stub_model(Clasp,
      :name => "MyString"
    ))
  end

  it "renders the edit clasp form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clasps_path(@clasp), :method => "post" do
      assert_select "input#clasp_name", :name => "clasp[name]"
    end
  end
end
