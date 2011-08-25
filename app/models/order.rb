class Order < ActiveRecord::Base
 validates_presence_of :customer_id, :message => "No Order Can Be Made Without Selecting a Customer"

 belongs_to :customer
 belongs_to :order_type
 has_and_belongs_to_many :item_inventories
end
