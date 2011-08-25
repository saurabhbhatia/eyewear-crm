class AddOrderIdToItemInventories < ActiveRecord::Migration
  def self.up
    add_column :item_inventories, :order_id, :integer
  end

  def self.down
    remove_column :item_inventories, :order_id
  end
end
