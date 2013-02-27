require "csv"

contents = CSV.open "CSVfiles\\example.csv", headers: true
contents.each do |row|
	first_name = row[2]
	puts first_name
end
