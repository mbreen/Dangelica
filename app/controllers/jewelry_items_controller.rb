class JewelryItemsController < ApplicationController
  before_filter :fetch_type_options, :only => [:new, :edit]
  
  # GET /jewelry_items
  # GET /jewelry_items.json
  def index
    @jewelry_items = JewelryItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jewelry_items }
    end
  end

  # GET /jewelry_items/1
  # GET /jewelry_items/1.json
  def show
    @jewelry_item = JewelryItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jewelry_item }
    end
  end

  # GET /jewelry_items/new
  # GET /jewelry_items/new.json
  def new
    @jewelry_item = JewelryItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jewelry_item }
    end
  end

  # GET /jewelry_items/1/edit
  def edit
    @jewelry_item = JewelryItem.find(params[:id])
  end

  # POST /jewelry_items
  # POST /jewelry_items.json
  def create
    @jewelry_item = JewelryItem.new(params[:jewelry_item])

    respond_to do |format|
      if @jewelry_item.save
        format.html { redirect_to @jewelry_item, notice: 'Jewelry item was successfully created.' }
        format.json { render json: @jewelry_item, status: :created, location: @jewelry_item }
      else
        format.html { render action: "new" }
        format.json { render json: @jewelry_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jewelry_items/1
  # PUT /jewelry_items/1.json
  def update
    @jewelry_item = JewelryItem.find(params[:id])

    respond_to do |format|
      if @jewelry_item.update_attributes(params[:jewelry_item])
        format.html { redirect_to @jewelry_item, notice: 'Jewelry item was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @jewelry_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jewelry_items/1
  # DELETE /jewelry_items/1.json
  def destroy
    @jewelry_item = JewelryItem.find(params[:id])
    @jewelry_item.destroy

    respond_to do |format|
      format.html { redirect_to jewelry_items_url }
      format.json { head :ok }
    end
  end
  
  private
  
  def fetch_type_options
    @string_types = StringType.all
    @jewelry_types = JewelryType.all
    @earring_types = EarringType.all
    @clasp_types = Clasp.all
  end
end
