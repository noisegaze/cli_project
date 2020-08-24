require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://worldwide-restaurants.p.rapidapi.com/search")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["x-rapidapi-host"] = 'worldwide-restaurants.p.rapidapi.com'
request["x-rapidapi-key"] = 'cbf3a9a4a2msh016640a1b0b9654p167a44jsn6a865e1db18a'
request["content-type"] = 'application/x-www-form-urlencoded'
request.body = "limit=30&language=en_US&location_id=297704&currency=USD"

response = http.request(request)
puts response.read_body

require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://worldwide-restaurants.p.rapidapi.com/typeahead")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["x-rapidapi-host"] = 'worldwide-restaurants.p.rapidapi.com'
request["x-rapidapi-key"] = 'cbf3a9a4a2msh016640a1b0b9654p167a44jsn6a865e1db18a'
request["content-type"] = 'application/x-www-form-urlencoded'
request.body = "language=en_US&q=band"

response = http.request(request)
puts response.read_body

require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://worldwide-restaurants.p.rapidapi.com/detail")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["x-rapidapi-host"] = 'worldwide-restaurants.p.rapidapi.com'
request["x-rapidapi-key"] = 'cbf3a9a4a2msh016640a1b0b9654p167a44jsn6a865e1db18a'
request["content-type"] = 'application/x-www-form-urlencoded'
request.body = "currency=USD&language=en_US&location_id=15333482"

response = http.request(request)
puts response.read_body
