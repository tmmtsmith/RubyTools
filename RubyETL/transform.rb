# Opens, manipulates and loads

require "csv"
require "sunlight"

Sunlight::Base.api_key = "e179a6973728c4dd3fb1204283aaccb5"

def clean_zip(zip)
	zip.to_s.rjust(5,"0")[0..4]
end

contents = CSV.open "CSVfiles\\example.csv", headers: true, header_converters: :symbol

contents.each do |row|
	first_name = row[:first_name]
	phone = row[:homephone]
	zip = clean_zip(row[:zipcode])
	legislators = Sunlight::Legislator.all_in_zipcode(zip)
	
	legislator_names = legislators.collect do |legislator|
		"#{legislator.firstname} #{legislator.lastname}"
	end
	
	legislators_string = legislator_names.join(", ")
	
	puts "#{first_name} #{phone} #{zip} #{legislators_string}"
end