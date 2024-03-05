def show_book book
	puts "-------------------------------------"
	book.each do |key, value|
		puts "Name: #{key}, Age: #{value}"
	end
end

book1 = { "Mike" => 65, "Bob" => 23, "Anna" => 21}
show_book book1

book2 = { "Oliver" => 41, "Andrew" => 19, "Betty" => 21}
show_book book2  

book = book1.merge book2
show_book book