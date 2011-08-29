class CreateBrands < ActiveRecord::Migration
  def self.up
    create_table :brands do |t|
      t.integer :order_type_id
      t.string  :name
      t.string  :model
      t.string  :color
      t.integer :quantity
      t.timestamps
    end
  end

  def self.down
    drop_table :brands
  end
end
