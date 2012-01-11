class ShowcasePlacementsController < ApplicationController
  # GET /showcase_placements
  # GET /showcase_placements.json
  def index
    @showcase = Showcase.find(params[:showcase_id])
    @showcase_placements = @showcase.showcase_placements.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @showcase_placements }
    end
  end

  # GET /showcase_placements/1
  # GET /showcase_placements/1.json
  def show
    @showcase = Showcase.find(params[:showcase_id])
    @showcase_placement = ShowcasePlacement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @showcase_placement }
    end
  end

  # GET /showcase_placements/new
  # GET /showcase_placements/new.json
  def new
    @showcase = Showcase.find(params[:showcase_id])
    @showcase_placement = @showcase.showcase_placements.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @showcase_placement }
    end
  end

  # GET /showcase_placements/1/edit
  def edit
    @showcase = Showcase.find(params[:showcase_id])
    @showcase_placement = ShowcasePlacement.find(params[:id])
  end

  # POST /showcase_placements
  # POST /showcase_placements.json
  def create
    @showcase = Showcase.find(params[:showcase_id])
    @showcase_placement = @showcase.showcase_placements.new(params[:showcase_placement])
    
    respond_to do |format|
      if @showcase_placement.save
        format.html { redirect_to showcase_showcase_placement_path(@showcase, @showcase_placement), notice: 'Showcase placement was successfully created.' }
        format.json { render json: @showcase_placement, status: :created, location: @showcase_placement }
      else
        format.html { render action: "new" }
        format.json { render json: @showcase_placement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /showcase_placements/1
  # PUT /showcase_placements/1.json
  def update
    @showcase = Showcase.find(params[:showcase_id])
    @showcase_placement = ShowcasePlacement.find(params[:id])

    respond_to do |format|
      if @showcase_placement.update_attributes(params[:showcase_placement])
        format.html { redirect_to showcase_showcase_placement_path(@showcase, @showcase_placement), notice: 'Showcase placement was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @showcase_placement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showcase_placements/1
  # DELETE /showcase_placements/1.json
  def destroy
    @showcase = Showcase.find(params[:showcase_id])
    @showcase_placement = ShowcasePlacement.find(params[:id])
    @showcase_placement.destroy

    respond_to do |format|
      format.html { redirect_to showcase_showcase_placements_url(@showcase) }
      format.json { head :ok }
    end
  end
end
