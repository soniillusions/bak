arr = ["Gena", "Katya", "John", "Anna"]

loop do 

	x = 0
	arr.each do |name|
		x = x + 1
	puts "#{x}. #{name}"
	end

	print "Кого будем удалять? "
	id = gets.to_i

	arr.delete_at id - 1

end
