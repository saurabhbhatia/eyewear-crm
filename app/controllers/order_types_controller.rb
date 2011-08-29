class OrderTypesController < ApplicationController
  def index
    @order_types = OrderType.find(:all)
  end

  def new
   @order_type = OrderType.new
   @order_type.brands.build
  end

  def edit
   @order_type = OrderType.find(params[:id])
  end

  def show
    @order_type = OrderType.find(params[:id])
  end

  def create 
   @order_type = OrderType.create(params[:order_type])
     if @order_type.save
       flash[:notice]= "#{@order_type.name} saved Successfully"
       redirect_to (@order_type)
     else 
       flash[:notice] = "there was an error saving '#{@order_type.name}'"
    end
  end

  def update
    @order_type = OrderType.find(params[:id])

    respond_to do |format|
      if @order_type.update_attributes(params[:order_type])
        format.html { redirect_to(@order_type, :notice => "#{@order_type.name} was successfully updated.") }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @order_type.errors, :status => :unprocessable_entity }
      end
    end
  end

end
