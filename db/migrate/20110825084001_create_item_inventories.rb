class CreateItemInventories < ActiveRecord::Migration
  def self.up
    create_table :item_inventories do |t|
      t.integer :order_type_id
      t.integer :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :item_inventories
  end
end
