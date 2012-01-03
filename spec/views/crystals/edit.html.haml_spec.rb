require 'spec_helper'

describe "crystals/edit.html.haml" do
  before(:each) do
    @crystal = assign(:crystal, stub_model(Crystal,
      :name => "MyString"
    ))
  end

  it "renders the edit crystal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => crystals_path(@crystal), :method => "post" do
      assert_select "input#crystal_name", :name => "crystal[name]"
    end
  end
end
