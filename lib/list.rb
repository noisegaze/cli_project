require 'net/http'
require 'open-uri'
require 'json'
#require 'open-ssl'
require 'pry'

class List

attr_accessor :city, :state 

@@all = []



    def initialize(city,state)
        @city = city
        @state = state
        #save
    end

    def location(location_endpoint_url) 
        location_query = @city + "," + @state 
        uri = URI.parse(location_endpoint_url)
        request = Net::HTTP::Post.new(uri)
        request["x-rapidapi-host"] = 'worldwide-restaurants.p.rapidapi.com'
        request["x-rapidapi-key"] = 'cbf3a9a4a2msh016640a1b0b9654p167a44jsn6a865e1db18a'
        request["content-type"] = 'application/x-www-form-urlencoded'
        request.body = "language=en_US&q=" + location_query 
        return request.body
        binding.pry
    end

    def search(search_endpoint_url)
        restaurant_search = self.location 
        uri =  URI.parse(search_endpoint_url)
        request = Net::HTTP::Post.new(uri)
        request["x-rapidapi-host"] = 'worldwide-restaurants.p.rapidapi.com'
        request["x-rapidapi-key"] = 'cbf3a9a4a2msh016640a1b0b9654p167a44jsn6a865e1db18a'
        request["content-type"] = 'application/x-www-form-urlencoded'
        request.body = "limit=30&language=en_US&location_id=" + restaurant_search
    end 

    def details(details_endpoint_url)
        restaurant_details = self.search 
        uri = URI.parse(details_endpoint_url)
        request = Net::HTTP::Post.new(url)
        request["x-rapidapi-host"] = 'worldwide-restaurants.p.rapidapi.com'
        request["x-rapidapi-key"] = 'cbf3a9a4a2msh016640a1b0b9654p167a44jsn6a865e1db18a'
        request["content-type"] = 'application/x-www-form-urlencoded'
        request.body = "currency=USD&language=en_US&location_id=" + restaurant_details
    end 
 
    def save 
        @@all << self
    end

    def self.all 
        @@all 
    end 

    def restart 
        @@all.clear
    end



end

































