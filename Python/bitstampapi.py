from urllib2 import urlopen
from json import load

## Public information
url = "https://www.bitstamp.net/api/ticker/"
res = urlopen(url)
j = load(res)

print j
