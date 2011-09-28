class Customer < ActiveRecord::Base

  extend FriendlyId
  friendly_id :full_name, :use => :slugged

  belongs_to :category
  belongs_to :group
  has_many :orders
  has_many :prescriptions

def age
  now = Time.now.utc.to_date
  now.year - date_of_birth.year - (date_of_birth.to_date.change(:year => now.year) > now ? 1 : 0)
end




end
