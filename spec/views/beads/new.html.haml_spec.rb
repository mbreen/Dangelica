require 'spec_helper'

describe "beads/new.html.haml" do
  before(:each) do
    assign(:bead, stub_model(Bead,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new bead form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => beads_path, :method => "post" do
      assert_select "input#bead_name", :name => "bead[name]"
    end
  end
end
