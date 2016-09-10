class Logbook < ActiveRecord::Base
	has_many :airports
	belongs_to :user


	before_validation :uppercase_dep_arr

	def uppercase_dep_arr
		departurePlace.upcase!
		arrivalPlace.upcase!
	end
end
