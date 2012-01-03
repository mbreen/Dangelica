require 'spec_helper'

describe "showcase_placements/edit.html.haml" do
  before(:each) do
    @showcase_placement = assign(:showcase_placement, stub_model(ShowcasePlacement,
      :showcase => nil,
      :jewelry_item => nil
    ))
  end

  it "renders the edit showcase_placement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => showcase_placements_path(@showcase_placement), :method => "post" do
      assert_select "input#showcase_placement_showcase", :name => "showcase_placement[showcase]"
      assert_select "input#showcase_placement_jewelry_item", :name => "showcase_placement[jewelry_item]"
    end
  end
end
