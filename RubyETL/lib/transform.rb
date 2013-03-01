# Opens, manipulates and loads

require "csv"

contents = CSV.open "CSVfiles\\example.csv", headers: true, header_converters: :symbol
contents.each do |row|
	first_name = row[:first_name]
	zip = row[:zipcode]
	puts "#{first_name} #{zip}"
end