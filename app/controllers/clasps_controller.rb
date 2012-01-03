class ClaspsController < ApplicationController
  # GET /clasps
  # GET /clasps.json
  def index
    @clasps = Clasp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clasps }
    end
  end

  # GET /clasps/1
  # GET /clasps/1.json
  def show
    @clasp = Clasp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clasp }
    end
  end

  # GET /clasps/new
  # GET /clasps/new.json
  def new
    @clasp = Clasp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clasp }
    end
  end

  # GET /clasps/1/edit
  def edit
    @clasp = Clasp.find(params[:id])
  end

  # POST /clasps
  # POST /clasps.json
  def create
    @clasp = Clasp.new(params[:clasp])

    respond_to do |format|
      if @clasp.save
        format.html { redirect_to @clasp, notice: 'Clasp was successfully created.' }
        format.json { render json: @clasp, status: :created, location: @clasp }
      else
        format.html { render action: "new" }
        format.json { render json: @clasp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clasps/1
  # PUT /clasps/1.json
  def update
    @clasp = Clasp.find(params[:id])

    respond_to do |format|
      if @clasp.update_attributes(params[:clasp])
        format.html { redirect_to @clasp, notice: 'Clasp was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @clasp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clasps/1
  # DELETE /clasps/1.json
  def destroy
    @clasp = Clasp.find(params[:id])
    @clasp.destroy

    respond_to do |format|
      format.html { redirect_to clasps_url }
      format.json { head :ok }
    end
  end
end
