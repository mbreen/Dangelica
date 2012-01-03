require 'spec_helper'

describe "collections/new.html.haml" do
  before(:each) do
    assign(:collection, stub_model(Collection,
      :name => "MyString",
      :description => "MyString",
      :theme => "MyString"
    ).as_new_record)
  end

  it "renders new collection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => collections_path, :method => "post" do
      assert_select "input#collection_name", :name => "collection[name]"
      assert_select "input#collection_description", :name => "collection[description]"
      assert_select "input#collection_theme", :name => "collection[theme]"
    end
  end
end
