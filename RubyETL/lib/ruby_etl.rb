puts "CSV Loader"

# Reads the file line-by-line
lines = File.readlines "CSVfiles\\example.csv"
lines.each do |line|
	# We declared the object line, and specified another object column from the object line
	# Specifies the delimiter for the columns
	columns = line.split(",")
	# Grabs the third array value, in this case First Name
	first_name = columns[2]
	puts first_name
end

# Note: Reads the file's entire contents
# contents = File.read "CSVfiles\\example.csv"
# puts contents