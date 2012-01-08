class ModelPlacementsController < ApplicationController
  # GET /model_placements
  # GET /model_placements.json
  def index
    @event = Event.find(params[:event_id])
    @model_placements = @event.model_placements.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @model_placements }
    end
  end

  # GET /model_placements/1
  # GET /model_placements/1.json
  def show
    @event = Event.find(params[:event_id])
    @model_placement = ModelPlacement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @model_placement }
    end
  end

  # GET /model_placements/new
  # GET /model_placements/new.json
  def new
    @event = Event.find(params[:event_id])
    @model_placement = @event.model_placements.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @model_placement }
    end
  end

  # GET /model_placements/1/edit
  def edit
    @event = Event.find(params[:event_id])
    @model_placement = ModelPlacement.find(params[:id])
  end

  # POST /model_placements
  # POST /model_placements.json
  def create
    @event = Event.find(params[:event_id])
    @model_placement = @event.model_placements.new(params[:model_placement])

    respond_to do |format|
      if @model_placement.save
        format.html { redirect_to event_model_placements_path(@event), notice: 'Model placement was successfully created.' }
        format.json { render json: @model_placement, status: :created, location: @model_placement }
      else
        format.html { render action: "new" }
        format.json { render json: @model_placement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /model_placements/1
  # PUT /model_placements/1.json
  def update
    @event = Event.find(params[:event_id])
    @model_placement = ModelPlacement.find(params[:id])

    respond_to do |format|
      if @model_placement.update_attributes(params[:model_placement])
        format.html { redirect_to @model_placement, notice: 'Model placement was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @model_placement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /model_placements/1
  # DELETE /model_placements/1.json
  def destroy
    @event = Event.find(params[:event_id])
    @model_placement = ModelPlacement.find(params[:id])
    @model_placement.destroy

    respond_to do |format|
      format.html { redirect_to model_placements_url }
      format.json { head :ok }
    end
  end
end
