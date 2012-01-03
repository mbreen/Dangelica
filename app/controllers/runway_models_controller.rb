class RunwayModelsController < ApplicationController
  # GET /runway_models
  # GET /runway_models.json
  def index
    @runway_models = RunwayModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @runway_models }
    end
  end

  # GET /runway_models/1
  # GET /runway_models/1.json
  def show
    @runway_model = RunwayModel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @runway_model }
    end
  end

  # GET /runway_models/new
  # GET /runway_models/new.json
  def new
    @runway_model = RunwayModel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @runway_model }
    end
  end

  # GET /runway_models/1/edit
  def edit
    @runway_model = RunwayModel.find(params[:id])
  end

  # POST /runway_models
  # POST /runway_models.json
  def create
    @runway_model = RunwayModel.new(params[:runway_model])

    respond_to do |format|
      if @runway_model.save
        format.html { redirect_to @runway_model, notice: 'Runway model was successfully created.' }
        format.json { render json: @runway_model, status: :created, location: @runway_model }
      else
        format.html { render action: "new" }
        format.json { render json: @runway_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /runway_models/1
  # PUT /runway_models/1.json
  def update
    @runway_model = RunwayModel.find(params[:id])

    respond_to do |format|
      if @runway_model.update_attributes(params[:runway_model])
        format.html { redirect_to @runway_model, notice: 'Runway model was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @runway_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /runway_models/1
  # DELETE /runway_models/1.json
  def destroy
    @runway_model = RunwayModel.find(params[:id])
    @runway_model.destroy

    respond_to do |format|
      format.html { redirect_to runway_models_url }
      format.json { head :ok }
    end
  end
end
