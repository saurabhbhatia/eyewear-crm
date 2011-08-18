class Group < ActiveRecord::Base
belongs_to :cutomer
validates :name, :presence => true
end
