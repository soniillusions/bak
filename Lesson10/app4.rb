arr = []

loop do
	arr2 = []
	print "Enter name to add? "
	id = gets.strip


	if id == ""
		break
	end

	print "Enter age: "
	age = gets.strip


	arr2 << id
	arr2 << age
	arr << arr2

end

#вывод списка
x = 0
arr.each do |item|
x = x + 1
puts "#{x}. #{item[0]}, #{item[1]}"
end




