class Password

  def initialize
    @input = File.open("/home/aleksey/Desktop/Projects/Lesson18/passwords.txt", "r")
  end

  def enter_password
    puts "Enter your password: "
    @pass = gets.strip
  end

  def is_password_weak?
    while (line = @input.gets)
      line.strip!
      if @pass.include?  line
        return true
        exit
      end
    end
    return false
  end
end

a = Password.new

a.enter_password

if a.is_password_weak? == true
  puts "Your password is weak"
elsif a.is_password_weak? == false
  puts "Your password is not weak"
end
