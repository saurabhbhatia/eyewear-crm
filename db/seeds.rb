# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

distances = Distance.create([{ :name => 'Distant' }, { :name => 'Near' }])

order_types = OrderType.create([{ :name => 'Spectacles', :quantity => 1000 }])
order_types = OrderType.create([{ :name => 'Eye-Teststing',  :quantity => 1000 }])
order_types = OrderType.create([{ :name => 'Sun-Glasses',  :quantity => 1000 }])
order_types = OrderType.create([{ :name => 'Contact Lences',  :quantity => 1000 }])


order_type = Group.create([{ :name => 'Gold Customer' },
                           { :name => 'Silver Customer' },
                           { :name => 'Other  Customer' }])

order_type = Category.create([{ :name => 'Festival Offer' },
                           { :name => 'Monsoon Dhamaka' }])
