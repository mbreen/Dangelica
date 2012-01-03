class BeadsController < ApplicationController
  # GET /beads
  # GET /beads.json
  def index
    @beads = Bead.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @beads }
    end
  end

  # GET /beads/1
  # GET /beads/1.json
  def show
    @bead = Bead.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bead }
    end
  end

  # GET /beads/new
  # GET /beads/new.json
  def new
    @bead = Bead.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bead }
    end
  end

  # GET /beads/1/edit
  def edit
    @bead = Bead.find(params[:id])
  end

  # POST /beads
  # POST /beads.json
  def create
    @bead = Bead.new(params[:bead])

    respond_to do |format|
      if @bead.save
        format.html { redirect_to @bead, notice: 'Bead was successfully created.' }
        format.json { render json: @bead, status: :created, location: @bead }
      else
        format.html { render action: "new" }
        format.json { render json: @bead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /beads/1
  # PUT /beads/1.json
  def update
    @bead = Bead.find(params[:id])

    respond_to do |format|
      if @bead.update_attributes(params[:bead])
        format.html { redirect_to @bead, notice: 'Bead was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @bead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beads/1
  # DELETE /beads/1.json
  def destroy
    @bead = Bead.find(params[:id])
    @bead.destroy

    respond_to do |format|
      format.html { redirect_to beads_url }
      format.json { head :ok }
    end
  end
end
