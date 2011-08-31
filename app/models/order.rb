class Order < ActiveRecord::Base

 validates_presence_of :customer_id,
                       :message => "No Order Can Be Made Without a Customer, Please Select a Customer"

<<<<<<< HEAD
# validate  :amount_has_to_be_greater_than_minimum
 
 validates :discount, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ },
                      :numericality => {:greater_than => 0}
=======
 validate  :numericality => {:greater_than => 0}
 
 validates :discount, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }
>>>>>>> 575aa786b295d1e83459e6b81047e090e8f957e8

 validates :advance, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ },
                      :numericality => {:greater_than => 0}

 validates_numericality_of :quantity, :allow_nil => false,
    :greater_than => 0, :less_than_or_equal_to => 10000, :only_integer => true

 belongs_to :customer
 belongs_to :order_type
 has_many :brands

# def amount_has_to_be_greater_than_minimum
#   errors.add(:amount, "amount has to be greater than 0.01") if
#   !amount.blank? and amount > 0.01
# end

end
