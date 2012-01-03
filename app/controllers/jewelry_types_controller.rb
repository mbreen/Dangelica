class JewelryTypesController < ApplicationController
  # GET /jewelry_types
  # GET /jewelry_types.json
  def index
    @jewelry_types = JewelryType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jewelry_types }
    end
  end

  # GET /jewelry_types/1
  # GET /jewelry_types/1.json
  def show
    @jewelry_type = JewelryType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jewelry_type }
    end
  end

  # GET /jewelry_types/new
  # GET /jewelry_types/new.json
  def new
    @jewelry_type = JewelryType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jewelry_type }
    end
  end

  # GET /jewelry_types/1/edit
  def edit
    @jewelry_type = JewelryType.find(params[:id])
  end

  # POST /jewelry_types
  # POST /jewelry_types.json
  def create
    @jewelry_type = JewelryType.new(params[:jewelry_type])

    respond_to do |format|
      if @jewelry_type.save
        format.html { redirect_to @jewelry_type, notice: 'Jewelry type was successfully created.' }
        format.json { render json: @jewelry_type, status: :created, location: @jewelry_type }
      else
        format.html { render action: "new" }
        format.json { render json: @jewelry_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jewelry_types/1
  # PUT /jewelry_types/1.json
  def update
    @jewelry_type = JewelryType.find(params[:id])

    respond_to do |format|
      if @jewelry_type.update_attributes(params[:jewelry_type])
        format.html { redirect_to @jewelry_type, notice: 'Jewelry type was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @jewelry_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jewelry_types/1
  # DELETE /jewelry_types/1.json
  def destroy
    @jewelry_type = JewelryType.find(params[:id])
    @jewelry_type.destroy

    respond_to do |format|
      format.html { redirect_to jewelry_types_url }
      format.json { head :ok }
    end
  end
end
