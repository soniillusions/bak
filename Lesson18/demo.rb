input = File.open("passwords.txt", "r")
output = File.open("outputfile.txt", "w")

while (line = input.gets)
	line.strip!
	if line.size == 6
		puts line
		output.write line
	end
end
