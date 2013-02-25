# String timestamp creator (in IRB)

require 'date'

# Must convert FixNum to String, otherwise we'll see an error

timestamp = Date.today.year.to_s + "-" + Date.today.month.to_s + "-" Date.today.day.to_s