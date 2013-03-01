require "csv"

contents = CSV.open "CSVfiles\\example.csv", headers: true, header_converters: :symbol
contents.each do |row|
	# The symbol in the brackets pulls data determined in the heading row; therefore data must have 
	# a match with the the symbol
	first_name = row[:first_name]
	zip = row[:zipcode]
	puts "#{first_name} #{zip}"
end
