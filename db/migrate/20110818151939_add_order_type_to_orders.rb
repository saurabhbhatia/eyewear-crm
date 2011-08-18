class AddOrderTypeToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :order_type_id, :integer
  end

  def self.down
    remove_column :orders, :order_type_id
  end
end
