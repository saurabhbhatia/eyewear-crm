class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :customer_id
      t.float :amount
      t.float :discount
      t.float :net
      t.float :advance
      t.float :balance
      t.date :delivery_date

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
