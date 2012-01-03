class FillerBeadsController < ApplicationController
  # GET /filler_beads
  # GET /filler_beads.json
  def index
    @filler_beads = FillerBead.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @filler_beads }
    end
  end

  # GET /filler_beads/1
  # GET /filler_beads/1.json
  def show
    @filler_bead = FillerBead.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @filler_bead }
    end
  end

  # GET /filler_beads/new
  # GET /filler_beads/new.json
  def new
    @filler_bead = FillerBead.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @filler_bead }
    end
  end

  # GET /filler_beads/1/edit
  def edit
    @filler_bead = FillerBead.find(params[:id])
  end

  # POST /filler_beads
  # POST /filler_beads.json
  def create
    @filler_bead = FillerBead.new(params[:filler_bead])

    respond_to do |format|
      if @filler_bead.save
        format.html { redirect_to @filler_bead, notice: 'Filler bead was successfully created.' }
        format.json { render json: @filler_bead, status: :created, location: @filler_bead }
      else
        format.html { render action: "new" }
        format.json { render json: @filler_bead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /filler_beads/1
  # PUT /filler_beads/1.json
  def update
    @filler_bead = FillerBead.find(params[:id])

    respond_to do |format|
      if @filler_bead.update_attributes(params[:filler_bead])
        format.html { redirect_to @filler_bead, notice: 'Filler bead was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @filler_bead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filler_beads/1
  # DELETE /filler_beads/1.json
  def destroy
    @filler_bead = FillerBead.find(params[:id])
    @filler_bead.destroy

    respond_to do |format|
      format.html { redirect_to filler_beads_url }
      format.json { head :ok }
    end
  end
end
