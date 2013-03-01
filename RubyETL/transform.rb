# Opens, manipulates and loads

require "csv"

def clean_zip(zip)
	if zip.nil?
		zip = "N/A"
	elsif zip.length < 5
		zip = zip.rjust(5,"0")
	elsif zip.length > 5
		zip = zip[0..4]
	else
		zip
	end
end

def clean_phone(phone)
	if phone.nil?
		phone = "N/A"
	elsif phone.length > 10
		phone.gsub!('(', '')
		phone.gsub!(')', '')
		phone.gsub!('-', '')
		phone.gsub!('.', '')
	else
		phone
	end
end

contents = CSV.open "CSVfiles\\example.csv", headers: true, header_converters: :symbol

contents.each do |row|
	first_name = row[:first_name]
	phone = clean_phone(row[:homephone])
	zip = clean_zip(row[:zipcode])
	
	#phone.gsub(%r[()-]/,' ')
	#phone[")"] = ""
	#phone["-"] = ""
	#phone[" "] = ""
	
	puts "#{first_name} #{phone} #{zip}"
end