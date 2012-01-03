class StringTypesController < ApplicationController
  # GET /string_types
  # GET /string_types.json
  def index
    @string_types = StringType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @string_types }
    end
  end

  # GET /string_types/1
  # GET /string_types/1.json
  def show
    @string_type = StringType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @string_type }
    end
  end

  # GET /string_types/new
  # GET /string_types/new.json
  def new
    @string_type = StringType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @string_type }
    end
  end

  # GET /string_types/1/edit
  def edit
    @string_type = StringType.find(params[:id])
  end

  # POST /string_types
  # POST /string_types.json
  def create
    @string_type = StringType.new(params[:string_type])

    respond_to do |format|
      if @string_type.save
        format.html { redirect_to @string_type, notice: 'String type was successfully created.' }
        format.json { render json: @string_type, status: :created, location: @string_type }
      else
        format.html { render action: "new" }
        format.json { render json: @string_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /string_types/1
  # PUT /string_types/1.json
  def update
    @string_type = StringType.find(params[:id])

    respond_to do |format|
      if @string_type.update_attributes(params[:string_type])
        format.html { redirect_to @string_type, notice: 'String type was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @string_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /string_types/1
  # DELETE /string_types/1.json
  def destroy
    @string_type = StringType.find(params[:id])
    @string_type.destroy

    respond_to do |format|
      format.html { redirect_to string_types_url }
      format.json { head :ok }
    end
  end
end
