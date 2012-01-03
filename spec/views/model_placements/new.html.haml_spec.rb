require 'spec_helper'

describe "model_placements/new.html.haml" do
  before(:each) do
    assign(:model_placement, stub_model(ModelPlacement,
      :event => nil,
      :runway_model => nil,
      :jewelry_item => nil
    ).as_new_record)
  end

  it "renders new model_placement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => model_placements_path, :method => "post" do
      assert_select "input#model_placement_event", :name => "model_placement[event]"
      assert_select "input#model_placement_runway_model", :name => "model_placement[runway_model]"
      assert_select "input#model_placement_jewelry_item", :name => "model_placement[jewelry_item]"
    end
  end
end
