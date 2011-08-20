class Customer < ActiveRecord::Base
belongs_to :category
belongs_to :group
has_many :orders
has_many :prescriptions
end
