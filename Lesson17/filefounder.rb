#puts Dir.pwd
print "Enter file name: "
name = gets.strip.to_s

print "Enter directory: "
directory = gets.strip.to_s

x = Dir.entries directory

a = 0

x.each do |file|
	#sleep(1)
	if file == name
		puts "1 file found: #{file}"
		a = 1
	end
end

if a == 0
	puts "No such file in directory"
end



