require 'spec_helper'

describe "filler_beads/edit.html.haml" do
  before(:each) do
    @filler_bead = assign(:filler_bead, stub_model(FillerBead,
      :name => "MyString"
    ))
  end

  it "renders the edit filler_bead form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => filler_beads_path(@filler_bead), :method => "post" do
      assert_select "input#filler_bead_name", :name => "filler_bead[name]"
    end
  end
end
