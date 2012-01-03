require 'spec_helper'

describe "runway_models/new.html.haml" do
  before(:each) do
    assign(:runway_model, stub_model(RunwayModel,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new runway_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => runway_models_path, :method => "post" do
      assert_select "input#runway_model_name", :name => "runway_model[name]"
    end
  end
end
