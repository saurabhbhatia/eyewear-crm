class AddQuantityToOrderTypes < ActiveRecord::Migration
  def self.up
    add_column :order_types, :quantity, :integer
  end

  def self.down
    remove_column :order_types, :quantity
  end
end
