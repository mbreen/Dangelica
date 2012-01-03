require 'spec_helper'

describe "collections/edit.html.haml" do
  before(:each) do
    @collection = assign(:collection, stub_model(Collection,
      :name => "MyString",
      :description => "MyString",
      :theme => "MyString"
    ))
  end

  it "renders the edit collection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => collections_path(@collection), :method => "post" do
      assert_select "input#collection_name", :name => "collection[name]"
      assert_select "input#collection_description", :name => "collection[description]"
      assert_select "input#collection_theme", :name => "collection[theme]"
    end
  end
end
