class CreateOrderTypes < ActiveRecord::Migration
  def self.up
    create_table :order_types do |t|
      t.string :name

      t.timestamps
    end
  end

   @order_type = OrderType.create(:name=>"Lens")
   @order_type = OrderType.create(:name=>"Specs")

  def self.down
    drop_table :order_types
  end
end
