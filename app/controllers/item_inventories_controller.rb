class ItemInventoriesController < ApplicationController
  # GET /item_inventories
  # GET /item_inventories.xml
  def index
    @item_inventories = ItemInventory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @item_inventories }
    end
  end

  # GET /item_inventories/1
  # GET /item_inventories/1.xml
  def show
    @item_inventory = ItemInventory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @item_inventory }
    end
  end

  # GET /item_inventories/new
  # GET /item_inventories/new.xml
  def new
    @item_inventory = ItemInventory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @item_inventory }
    end
  end

  # GET /item_inventories/1/edit
  def edit
    @item_inventory = ItemInventory.find(params[:id])
  end

  # POST /item_inventories
  # POST /item_inventories.xml
  def create
    @item_inventory = ItemInventory.new(params[:item_inventory])

    respond_to do |format|
      if @item_inventory.save
        format.html { redirect_to(@item_inventory, :notice => 'Item inventory was successfully created.') }
        format.xml  { render :xml => @item_inventory, :status => :created, :location => @item_inventory }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @item_inventory.errors, :status => :unprocessable_entity }
      end
    end
  end


  # PUT /item_inventories/1
  # PUT /item_inventories/1.xml
  def update
    @item_inventory = ItemInventory.find(params[:id])

    respond_to do |format|
      if @item_inventory.update_attributes(params[:item_inventory])
        format.html { redirect_to(@item_inventory, :notice => 'Item inventory was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @item_inventory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /item_inventories/1
  # DELETE /item_inventories/1.xml
  def destroy
    @item_inventory = ItemInventory.find(params[:id])
    @item_inventory.destroy

    respond_to do |format|
      format.html { redirect_to(item_inventories_url) }
      format.xml  { head :ok }
    end
  end
end
