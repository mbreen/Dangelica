require 'spec_helper'

describe "stones/new.html.haml" do
  before(:each) do
    assign(:stone, stub_model(Stone,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new stone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stones_path, :method => "post" do
      assert_select "input#stone_name", :name => "stone[name]"
    end
  end
end
