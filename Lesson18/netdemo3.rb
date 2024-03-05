require 'net/http'

response = Net::HTTP.get(URI(' https://vimeo.com/102869014'))

puts response