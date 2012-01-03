require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe JewelryTypesController do

  # This should return the minimal set of attributes required to create a valid
  # JewelryType. As you add validations to JewelryType, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all jewelry_types as @jewelry_types" do
      jewelry_type = JewelryType.create! valid_attributes
      get :index
      assigns(:jewelry_types).should eq([jewelry_type])
    end
  end

  describe "GET show" do
    it "assigns the requested jewelry_type as @jewelry_type" do
      jewelry_type = JewelryType.create! valid_attributes
      get :show, :id => jewelry_type.id
      assigns(:jewelry_type).should eq(jewelry_type)
    end
  end

  describe "GET new" do
    it "assigns a new jewelry_type as @jewelry_type" do
      get :new
      assigns(:jewelry_type).should be_a_new(JewelryType)
    end
  end

  describe "GET edit" do
    it "assigns the requested jewelry_type as @jewelry_type" do
      jewelry_type = JewelryType.create! valid_attributes
      get :edit, :id => jewelry_type.id
      assigns(:jewelry_type).should eq(jewelry_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new JewelryType" do
        expect {
          post :create, :jewelry_type => valid_attributes
        }.to change(JewelryType, :count).by(1)
      end

      it "assigns a newly created jewelry_type as @jewelry_type" do
        post :create, :jewelry_type => valid_attributes
        assigns(:jewelry_type).should be_a(JewelryType)
        assigns(:jewelry_type).should be_persisted
      end

      it "redirects to the created jewelry_type" do
        post :create, :jewelry_type => valid_attributes
        response.should redirect_to(JewelryType.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved jewelry_type as @jewelry_type" do
        # Trigger the behavior that occurs when invalid params are submitted
        JewelryType.any_instance.stub(:save).and_return(false)
        post :create, :jewelry_type => {}
        assigns(:jewelry_type).should be_a_new(JewelryType)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        JewelryType.any_instance.stub(:save).and_return(false)
        post :create, :jewelry_type => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested jewelry_type" do
        jewelry_type = JewelryType.create! valid_attributes
        # Assuming there are no other jewelry_types in the database, this
        # specifies that the JewelryType created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        JewelryType.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => jewelry_type.id, :jewelry_type => {'these' => 'params'}
      end

      it "assigns the requested jewelry_type as @jewelry_type" do
        jewelry_type = JewelryType.create! valid_attributes
        put :update, :id => jewelry_type.id, :jewelry_type => valid_attributes
        assigns(:jewelry_type).should eq(jewelry_type)
      end

      it "redirects to the jewelry_type" do
        jewelry_type = JewelryType.create! valid_attributes
        put :update, :id => jewelry_type.id, :jewelry_type => valid_attributes
        response.should redirect_to(jewelry_type)
      end
    end

    describe "with invalid params" do
      it "assigns the jewelry_type as @jewelry_type" do
        jewelry_type = JewelryType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JewelryType.any_instance.stub(:save).and_return(false)
        put :update, :id => jewelry_type.id, :jewelry_type => {}
        assigns(:jewelry_type).should eq(jewelry_type)
      end

      it "re-renders the 'edit' template" do
        jewelry_type = JewelryType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JewelryType.any_instance.stub(:save).and_return(false)
        put :update, :id => jewelry_type.id, :jewelry_type => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested jewelry_type" do
      jewelry_type = JewelryType.create! valid_attributes
      expect {
        delete :destroy, :id => jewelry_type.id
      }.to change(JewelryType, :count).by(-1)
    end

    it "redirects to the jewelry_types list" do
      jewelry_type = JewelryType.create! valid_attributes
      delete :destroy, :id => jewelry_type.id
      response.should redirect_to(jewelry_types_url)
    end
  end

end