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

describe JewelryItemsController do

  # This should return the minimal set of attributes required to create a valid
  # JewelryItem. As you add validations to JewelryItem, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all jewelry_items as @jewelry_items" do
      jewelry_item = JewelryItem.create! valid_attributes
      get :index
      assigns(:jewelry_items).should eq([jewelry_item])
    end
  end

  describe "GET show" do
    it "assigns the requested jewelry_item as @jewelry_item" do
      jewelry_item = JewelryItem.create! valid_attributes
      get :show, :id => jewelry_item.id
      assigns(:jewelry_item).should eq(jewelry_item)
    end
  end

  describe "GET new" do
    it "assigns a new jewelry_item as @jewelry_item" do
      get :new
      assigns(:jewelry_item).should be_a_new(JewelryItem)
    end
  end

  describe "GET edit" do
    it "assigns the requested jewelry_item as @jewelry_item" do
      jewelry_item = JewelryItem.create! valid_attributes
      get :edit, :id => jewelry_item.id
      assigns(:jewelry_item).should eq(jewelry_item)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new JewelryItem" do
        expect {
          post :create, :jewelry_item => valid_attributes
        }.to change(JewelryItem, :count).by(1)
      end

      it "assigns a newly created jewelry_item as @jewelry_item" do
        post :create, :jewelry_item => valid_attributes
        assigns(:jewelry_item).should be_a(JewelryItem)
        assigns(:jewelry_item).should be_persisted
      end

      it "redirects to the created jewelry_item" do
        post :create, :jewelry_item => valid_attributes
        response.should redirect_to(JewelryItem.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved jewelry_item as @jewelry_item" do
        # Trigger the behavior that occurs when invalid params are submitted
        JewelryItem.any_instance.stub(:save).and_return(false)
        post :create, :jewelry_item => {}
        assigns(:jewelry_item).should be_a_new(JewelryItem)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        JewelryItem.any_instance.stub(:save).and_return(false)
        post :create, :jewelry_item => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested jewelry_item" do
        jewelry_item = JewelryItem.create! valid_attributes
        # Assuming there are no other jewelry_items in the database, this
        # specifies that the JewelryItem created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        JewelryItem.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => jewelry_item.id, :jewelry_item => {'these' => 'params'}
      end

      it "assigns the requested jewelry_item as @jewelry_item" do
        jewelry_item = JewelryItem.create! valid_attributes
        put :update, :id => jewelry_item.id, :jewelry_item => valid_attributes
        assigns(:jewelry_item).should eq(jewelry_item)
      end

      it "redirects to the jewelry_item" do
        jewelry_item = JewelryItem.create! valid_attributes
        put :update, :id => jewelry_item.id, :jewelry_item => valid_attributes
        response.should redirect_to(jewelry_item)
      end
    end

    describe "with invalid params" do
      it "assigns the jewelry_item as @jewelry_item" do
        jewelry_item = JewelryItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JewelryItem.any_instance.stub(:save).and_return(false)
        put :update, :id => jewelry_item.id, :jewelry_item => {}
        assigns(:jewelry_item).should eq(jewelry_item)
      end

      it "re-renders the 'edit' template" do
        jewelry_item = JewelryItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JewelryItem.any_instance.stub(:save).and_return(false)
        put :update, :id => jewelry_item.id, :jewelry_item => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested jewelry_item" do
      jewelry_item = JewelryItem.create! valid_attributes
      expect {
        delete :destroy, :id => jewelry_item.id
      }.to change(JewelryItem, :count).by(-1)
    end

    it "redirects to the jewelry_items list" do
      jewelry_item = JewelryItem.create! valid_attributes
      delete :destroy, :id => jewelry_item.id
      response.should redirect_to(jewelry_items_url)
    end
  end

end