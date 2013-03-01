require "csv"

contents = CSV.open "CSVfiles\\example.csv", headers: true, header_converters: :symbol
contents.each do |row|
	# The symbol in the brackets pulls data determined in the heading row
	first_name = row[:first_name]
	zip = row[:zipcode]
	puts "#{first_name} #{zip}"
end
