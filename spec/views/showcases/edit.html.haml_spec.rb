require 'spec_helper'

describe "showcases/edit.html.haml" do
  before(:each) do
    @showcase = assign(:showcase, stub_model(Showcase,
      :name => "MyString",
      :num_positions => 1,
      :location_description => "MyString"
    ))
  end

  it "renders the edit showcase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => showcases_path(@showcase), :method => "post" do
      assert_select "input#showcase_name", :name => "showcase[name]"
      assert_select "input#showcase_num_positions", :name => "showcase[num_positions]"
      assert_select "input#showcase_location_description", :name => "showcase[location_description]"
    end
  end
end
