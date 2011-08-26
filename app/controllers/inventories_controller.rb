class InventoriesController < ApplicationController
  def index
   @inventories = OrderType.find_by_sql('select * from order_types')
   @order = Order.find_by_sql('select * from orders' )
  end

end
