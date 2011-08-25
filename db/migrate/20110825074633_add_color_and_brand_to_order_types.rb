class AddColorAndBrandToOrderTypes < ActiveRecord::Migration
  def self.up
    add_column :order_types, :color, :string
    add_column :order_types, :brand, :string
  end

  def self.down
    remove_column :order_types, :brand
    remove_column :order_types, :color
  end
end
