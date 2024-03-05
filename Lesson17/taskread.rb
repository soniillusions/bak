input = File.open "task.txt", "r"

total = 0

1.upto(6) do (line = input.gets)
		total += line.split[1].to_i
end

input.close

puts "Total: #{total}"