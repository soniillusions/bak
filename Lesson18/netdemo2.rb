require 'net/http'
require 'uri'

uri = URI.parse 'https://vimeo.com/102869014'
response = Net::HTTP.get uri
puts response