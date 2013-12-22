# Tw
require 'rubygems'
require 'oauth'

#En + B

http = Net::HTTP.new address.host, address.port
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER

request = Net::HTTP::Get.new address.request_uri
request.oauth! http, consumer_key, access_token

http.start
response = http.request request

