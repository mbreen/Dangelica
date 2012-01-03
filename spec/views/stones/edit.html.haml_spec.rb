require 'spec_helper'

describe "stones/edit.html.haml" do
  before(:each) do
    @stone = assign(:stone, stub_model(Stone,
      :name => "MyString"
    ))
  end

  it "renders the edit stone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stones_path(@stone), :method => "post" do
      assert_select "input#stone_name", :name => "stone[name]"
    end
  end
end
