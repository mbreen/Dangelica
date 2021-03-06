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

describe ClaspsController do

  # This should return the minimal set of attributes required to create a valid
  # Clasp. As you add validations to Clasp, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all clasps as @clasps" do
      clasp = Clasp.create! valid_attributes
      get :index
      assigns(:clasps).should eq([clasp])
    end
  end

  describe "GET show" do
    it "assigns the requested clasp as @clasp" do
      clasp = Clasp.create! valid_attributes
      get :show, :id => clasp.id
      assigns(:clasp).should eq(clasp)
    end
  end

  describe "GET new" do
    it "assigns a new clasp as @clasp" do
      get :new
      assigns(:clasp).should be_a_new(Clasp)
    end
  end

  describe "GET edit" do
    it "assigns the requested clasp as @clasp" do
      clasp = Clasp.create! valid_attributes
      get :edit, :id => clasp.id
      assigns(:clasp).should eq(clasp)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Clasp" do
        expect {
          post :create, :clasp => valid_attributes
        }.to change(Clasp, :count).by(1)
      end

      it "assigns a newly created clasp as @clasp" do
        post :create, :clasp => valid_attributes
        assigns(:clasp).should be_a(Clasp)
        assigns(:clasp).should be_persisted
      end

      it "redirects to the created clasp" do
        post :create, :clasp => valid_attributes
        response.should redirect_to(Clasp.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved clasp as @clasp" do
        # Trigger the behavior that occurs when invalid params are submitted
        Clasp.any_instance.stub(:save).and_return(false)
        post :create, :clasp => {}
        assigns(:clasp).should be_a_new(Clasp)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Clasp.any_instance.stub(:save).and_return(false)
        post :create, :clasp => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested clasp" do
        clasp = Clasp.create! valid_attributes
        # Assuming there are no other clasps in the database, this
        # specifies that the Clasp created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Clasp.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => clasp.id, :clasp => {'these' => 'params'}
      end

      it "assigns the requested clasp as @clasp" do
        clasp = Clasp.create! valid_attributes
        put :update, :id => clasp.id, :clasp => valid_attributes
        assigns(:clasp).should eq(clasp)
      end

      it "redirects to the clasp" do
        clasp = Clasp.create! valid_attributes
        put :update, :id => clasp.id, :clasp => valid_attributes
        response.should redirect_to(clasp)
      end
    end

    describe "with invalid params" do
      it "assigns the clasp as @clasp" do
        clasp = Clasp.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Clasp.any_instance.stub(:save).and_return(false)
        put :update, :id => clasp.id, :clasp => {}
        assigns(:clasp).should eq(clasp)
      end

      it "re-renders the 'edit' template" do
        clasp = Clasp.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Clasp.any_instance.stub(:save).and_return(false)
        put :update, :id => clasp.id, :clasp => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested clasp" do
      clasp = Clasp.create! valid_attributes
      expect {
        delete :destroy, :id => clasp.id
      }.to change(Clasp, :count).by(-1)
    end

    it "redirects to the clasps list" do
      clasp = Clasp.create! valid_attributes
      delete :destroy, :id => clasp.id
      response.should redirect_to(clasps_url)
    end
  end

end
