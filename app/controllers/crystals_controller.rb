class CrystalsController < ApplicationController
  # GET /crystals
  # GET /crystals.json
  def index
    @crystals = Crystal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @crystals }
    end
  end

  # GET /crystals/1
  # GET /crystals/1.json
  def show
    @crystal = Crystal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @crystal }
    end
  end

  # GET /crystals/new
  # GET /crystals/new.json
  def new
    @crystal = Crystal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @crystal }
    end
  end

  # GET /crystals/1/edit
  def edit
    @crystal = Crystal.find(params[:id])
  end

  # POST /crystals
  # POST /crystals.json
  def create
    @crystal = Crystal.new(params[:crystal])

    respond_to do |format|
      if @crystal.save
        format.html { redirect_to @crystal, notice: 'Crystal was successfully created.' }
        format.json { render json: @crystal, status: :created, location: @crystal }
      else
        format.html { render action: "new" }
        format.json { render json: @crystal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /crystals/1
  # PUT /crystals/1.json
  def update
    @crystal = Crystal.find(params[:id])

    respond_to do |format|
      if @crystal.update_attributes(params[:crystal])
        format.html { redirect_to @crystal, notice: 'Crystal was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @crystal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crystals/1
  # DELETE /crystals/1.json
  def destroy
    @crystal = Crystal.find(params[:id])
    @crystal.destroy

    respond_to do |format|
      format.html { redirect_to crystals_url }
      format.json { head :ok }
    end
  end
end
