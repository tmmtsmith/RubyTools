# For tests before applying it to the main program

require "csv"
require "sunlight"

Sunlight::Base.api_key = "e179a6973728c4dd3fb1204283aaccb5"

def clean_zipcode(zipcode)
	zipcode.to_s.rjust(5,"0")[0..4]
end

contents = CSV.open "CSVfiles\\example.csv", headers: true, header_converters: :symbol

contents.each do |row|
  name = row[:first_name]

  zipcode = clean_zipcode(row[:zipcode])

  legislators = Sunlight::Legislator.all_in_zipcode(zipcode)

  legislator_names = legislators.collect do |legislator|
    "#{legislator.firstname} #{legislator.lastname}"
  end

  legislators_string = legislator_names.join(", ")

  puts "#{name} #{zipcode} #{legislators_string}"
end