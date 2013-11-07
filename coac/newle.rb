## Code from Codecademy

require 'rubygems'
require 'oauth'

consumer_key = OAuth::Consumer.new(
    "ConsumerKey",
    "ConsumerSecret")
access_token = OAuth::Token.new(
    "AccessToken",
    "AccessTokenSecret")

baseurl = "https://api.twitter.com"

address = URI("#{baseurl}/1.1/account/verify_credentials.json")

http = Net::HTTP.new address.host, address.port
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER

request = Net::HTTP::Get.new address.request_uri
request.oauth! http, consumer_key, access_token

http.start
response = http.request request
puts "The response status was #{response.code}"
