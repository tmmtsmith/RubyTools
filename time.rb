## Now
x = Time.now

# Year/Month/Day
t = Time.new
puts t.year
puts t.month
puts t.day

# SQL Server useful:
puts t.strftime("%Y-%m-%d) ## DATE
puts t.strftime("%Y-%m-%d %H:%M:%S") ## DATETIME
