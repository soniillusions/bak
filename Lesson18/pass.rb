def is_password_weak? password
	input = File.open("passwords.txt", "r")
	
	while (line = input.gets)
		line.strip!
	
		if password.include?(line)
			return true
		end
	end

	return false
end

print 'Enter password: '
mypassword = gets.strip

if is_password_weak? mypassword
	puts "You password is weak"
else
	puts "You password is not weak"
end