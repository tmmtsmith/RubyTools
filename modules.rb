module SqlConnection

    ## Note: this is not an actual connection, but testing modules and references to them
    UN = "UU"
    PA = "PP"
    
    ## syntax self (referring to current module) then method name
    ## other way: def SqlConnection.connect
    def self.connect(db,sv)
        scon = "Connection string with " + db + " and " + sv
        scon += " p:" + PA + " u:" + UN
        return scon
    end

end

puts SqlConnection::connect("OurDB","OurServer")


## Classes - read/write

class Connect
	attr_accessor :server, :database
end
