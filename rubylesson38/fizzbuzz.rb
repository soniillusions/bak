file = File.open("output.txt", "w")

1.upto(100) do |number|
    if number % 3 == 0 && number % 5 != 0
        file.write ("#{number} Fizz\n")
    elsif number % 5 == 0 && number % 3 != 0
        file.write ("#{number} Buzz\n")
    elsif number % 3 == 0 && number % 5 == 0
        file.write ("#{number} FizzBuzz\n")
    else
        file.puts number
    end
end

file.close