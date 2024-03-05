
number = rand(1..1000)

n = 10

n.times do |hh|

	print "Я загадал число, угадай какое? Попытка #{hh + 1} осталось попыток #{(n + 1) - (hh + 1)} : "

	answer = gets.to_i


	if answer == number 
		puts "Угадал, молодец!"
		exit
	elsif answer < number 
		puts "Нет, больше" 
	elsif answer > number 
		puts "Нет, меньше"
	end

	puts " "
end
