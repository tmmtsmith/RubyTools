puts "CSV Loader"

# Reads the file line-by-line
lines = File.readlines "CSVfiles\\example.csv"
# This declares a "beginning"
lines.each_with_index do |line,index|
	# If the row is 0 skip it and continue (see last line before end)
	next if index == 0
	# We declared the object line, and specified another object column from the object line
	# Specifies the delimiter for the columns
	columns = line.split(",")
	# Grabs the third array value, in this case First Name
	first_name = columns[2]
	puts first_name
	index
end

# Note: Reads the file's entire contents
# contents = File.read "CSVfiles\\example.csv"
# puts contents