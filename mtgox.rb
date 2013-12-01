## Linux - outside IRB
gem install mtgox

## IRB
require 'mtgox'
x = MtGox.ticker.sell ##(long decimal)
puts x

## Loop

require 'rubygems'
require 'mtgox'

x = 1

while x == 1
  puts MtGox.ticker.sell
  sleep(60)
end
