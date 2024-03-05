require 'net/http'

response = Net::HTTP.get 'rubyschool.us', '/index.html'
puts response