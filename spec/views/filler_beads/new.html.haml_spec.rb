require 'spec_helper'

describe "filler_beads/new.html.haml" do
  before(:each) do
    assign(:filler_bead, stub_model(FillerBead,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new filler_bead form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => filler_beads_path, :method => "post" do
      assert_select "input#filler_bead_name", :name => "filler_bead[name]"
    end
  end
end
