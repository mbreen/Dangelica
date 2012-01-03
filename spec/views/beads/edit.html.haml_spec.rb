require 'spec_helper'

describe "beads/edit.html.haml" do
  before(:each) do
    @bead = assign(:bead, stub_model(Bead,
      :name => "MyString"
    ))
  end

  it "renders the edit bead form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => beads_path(@bead), :method => "post" do
      assert_select "input#bead_name", :name => "bead[name]"
    end
  end
end
