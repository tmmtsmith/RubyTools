# Opens, manipulates and loads

require "csv"

contents = CSV.open "CSVfiles\\example.csv", headers: true, header_converters: :symbol

contents.each do |row|
	first_name = row[:first_name]
	zip = row[:zipcode]
	
	if zip.length < 5
		zip = zip.rjust 5, "0"
	elsif zip.length > 5
		zip = zip[0..4]
	elsif zip.length == nil
		zip = "00000"
	end
	
	puts "#{first_name} #{zip}"
end