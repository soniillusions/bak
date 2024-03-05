def get_number
  loop do
    print "Enter a number between 1 and 10: "
    number = gets.to_i
    if number.between?(1, 10)
      return number
    else
      puts "Invalid input. Please try again."
    end
  end
end

get_number