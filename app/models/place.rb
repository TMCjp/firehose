class Place < ActiveRecord::Base
	belongs_to :user
	validates :name, :presence => true, :uniqueness => true, :length => { :within => 3..100 }
	validates :address, :presence => true, :length => { :within => 1..100 }
	validates :description, :presence => true, :length => { :within => 1..400 }
end
