class Brand < ActiveRecord::Base
 belongs_to :order_type
 validates_presence_of :name, :model , :color
end
