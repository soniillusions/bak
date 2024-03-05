require 'net/http'

uri = URI('https://vk.com/login')

response = Net::HTTP.post_form(uri, :login => '+447498139845')

puts response.body