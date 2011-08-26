class Order < ActiveRecord::Base
 validates_presence_of :customer_id,
                       :message => "No Order Can Be Made Without a Customer, Please Select a Customer"

 validate  :amount_has_to_be_greater_than_minimum
 
 validates :discount, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ },
                      :numericality => {:greater_than => 0, :less_than => 10}

 validates :advance, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ },
                      :numericality => {:greater_than => 0, :less_than => 10}

 validates_numericality_of :quantity, :allow_nil => false,
    :greater_than => 0, :less_than_or_equal_to => 10, :only_integer => true

 belongs_to :customer
 belongs_to :order_type

 def amount_has_to_be_greater_than_minimum
   errors.add(:amount, "amount has to be greater than 0.01") if
   !amount.blank? and amount > 0.01
 end



end
