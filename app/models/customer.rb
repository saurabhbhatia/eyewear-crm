class Customer < ActiveRecord::Base
has_many :categories
has_many :groups
has_many :orders

end
