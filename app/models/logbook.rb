class Logbook < ActiveRecord::Base
	has_many :airports
	belongs_to :user
end
