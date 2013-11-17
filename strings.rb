# Playful
a = "miscellaneous bread"
y = a.length
if y > 2
    x = a[2,y] + a[0,2]
end

# Input
puts "Enter a string"
a = gets
y = a.length
if y > 2
    x = (a[2,y] + a[0,2]).delete("\n")
end
