def show_book book
	puts "-------------------------------------<br>"
	book.each do |key, value|
		puts "Name: <i>#{key}</i>, Age: <b>#{value}</b><br>"
	end
end

book1 = { "Mike" => 65, "Bob" => 23, "Anna" => 21}


book2 = { "Oliver" => 41, "Andrew" => 19, "Betty" => 21}


book1.merge! book2

puts "<body>"

show_book book1