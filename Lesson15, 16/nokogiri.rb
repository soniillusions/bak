require 'nokogiri'

html        = "<title>test</title>actual content here..."
parsed_data = Nokogiri::HTML.parse(html)

puts parsed_data.title
