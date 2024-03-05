def is_password_weak? password
    @input = File.open("/home/aleksey/Desktop/Projects/Lesson18/passwords.txt", "r")

    while (line = @input.gets)
        line.strip!

        if password.include? line 
         return true
         exit
        end
    end
    return false
end

puts "Enter your password: "
pass = gets.strip

if is_password_weak? pass
    puts "Your password is weak"
else
    puts "Your password is not weak"
end
