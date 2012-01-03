require 'spec_helper'

describe "runway_models/edit.html.haml" do
  before(:each) do
    @runway_model = assign(:runway_model, stub_model(RunwayModel,
      :name => "MyString"
    ))
  end

  it "renders the edit runway_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => runway_models_path(@runway_model), :method => "post" do
      assert_select "input#runway_model_name", :name => "runway_model[name]"
    end
  end
end
