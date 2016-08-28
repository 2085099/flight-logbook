require 'csv'

namespace :import do

	desc "Import airports from CSV"
	task airports: :environment do
		filename = File.join Rails.root, "airports.csv"
		counter = 0;

		CSV.foreach(filename) do |row|
			Airport.create(ident: "id", latitude: "latitude_deg", 
				longitude: "longitude_deg")

			counter += 1

			puts "Imported #{counter} airports"

		end

		
	end

end