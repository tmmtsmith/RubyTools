## Order method
def ord(arr, rev=false)
    if rev == true
        arr.sort.reverse!
    else
        arr.sort!
    end
end

x = ["a","e","i","o","u"]
print "Forward"
puts ord(x)
print "Backward"
puts ord(x,true)
