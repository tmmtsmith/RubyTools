# Opens, manipulates and loads

require "csv"

contents = CSV.open "CSVfiles\\example.csv", headers: true, header_converters: :symbol

contents.each do |row|
	first_name = row[:first_name]
	phone = row[:homephone]
	zip = row[:zipcode]
	
	if phone.nil?
		phone = "N/A"
	end
	
	#phone["("] = ""
	#phone[")"] = ""
	#phone["-"] = ""
	#phone[" "] = ""
	
	if zip.nil?
		zip = "N/A"
	elsif zip.length < 5
		zip = zip.rjust 5, "0"
	elsif zip.length > 5
		zip = zip[0..4]
	end
	
	puts "#{first_name} #{phone} #{zip}"
end