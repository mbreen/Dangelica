class EarringTypesController < ApplicationController
  # GET /earring_types
  # GET /earring_types.json
  def index
    @earring_types = EarringType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @earring_types }
    end
  end

  # GET /earring_types/1
  # GET /earring_types/1.json
  def show
    @earring_type = EarringType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @earring_type }
    end
  end

  # GET /earring_types/new
  # GET /earring_types/new.json
  def new
    @earring_type = EarringType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @earring_type }
    end
  end

  # GET /earring_types/1/edit
  def edit
    @earring_type = EarringType.find(params[:id])
  end

  # POST /earring_types
  # POST /earring_types.json
  def create
    @earring_type = EarringType.new(params[:earring_type])

    respond_to do |format|
      if @earring_type.save
        format.html { redirect_to @earring_type, notice: 'Earring type was successfully created.' }
        format.json { render json: @earring_type, status: :created, location: @earring_type }
      else
        format.html { render action: "new" }
        format.json { render json: @earring_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /earring_types/1
  # PUT /earring_types/1.json
  def update
    @earring_type = EarringType.find(params[:id])

    respond_to do |format|
      if @earring_type.update_attributes(params[:earring_type])
        format.html { redirect_to @earring_type, notice: 'Earring type was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @earring_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /earring_types/1
  # DELETE /earring_types/1.json
  def destroy
    @earring_type = EarringType.find(params[:id])
    @earring_type.destroy

    respond_to do |format|
      format.html { redirect_to earring_types_url }
      format.json { head :ok }
    end
  end
end
