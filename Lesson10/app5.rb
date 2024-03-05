def add_items 
	@arr = []
	loop do
		arr2 = []

		print "Enter name to add: "
		name = gets.strip


		if name == ""
			break
		end

		print "Enter age: "
		age = gets.strip

		arr2 << name
		arr2 << age

		@arr << arr2
	end
end

def display_items
	x = 0
	@arr.each do |item|
		x = x + 1
		puts "#{x}. #{item[0]}, #{item[1]}"
	end
end

def remove_items
	print "Which item needs to be removed?"
	remove = gets.to_i
	@arr.delete_at(remove - 1)
end


add_items

display_items

remove_items

display_items
