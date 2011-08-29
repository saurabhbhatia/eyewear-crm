class OrderType < ActiveRecord::Base

  has_many :orders
  has_many :brands, :dependent => :destroy
  accepts_nested_attributes_for :brands, :allow_destroy => true, :reject_if => proc { |a| a['name'].blank? }
  attr_accessible :name
  attr_accessible :brands_attributes

end
