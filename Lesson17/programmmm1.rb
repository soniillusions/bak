input = File.open("task.txt", "r")

x = 0
a = 0

while (line = input.gets)
	a += 1
	if a == 6
		break
	end
	arr = line.split(',')
	x += arr[1].to_i 
end

puts "Total: #{x}"

input.close