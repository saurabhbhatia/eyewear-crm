class Order < ActiveRecord::Base
belongs_to :customer
has_one :order_type
end
