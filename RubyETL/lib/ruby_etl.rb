puts "CSV Loader"

# Reads the file line-by-line
lines = File.readlines "CSVfiles\\example.csv"
lines.each do |line|
	puts line
end

# Note: Reads the file's entire contents
# contents = File.read "CSVfiles\\example.csv"
# puts contents