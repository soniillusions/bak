#lesson 7

=begin

print "Сколько вам лет? "
y = gets.to_i

print "Хотите играть? (Y/N) "
answer = gets.strip.upcase

if y >= 18 && answer == "Y"
	puts "Хорошо, поиграем!"

=end

print "На какую сумму будем играть?: "
money = gets.to_i
		
1000.times do

puts "Введите Enter чтобы дернуть ручку"
gets
	
money = money - rand(1..5)

x = rand(0..9)
y = rand(0..9)
z = rand(0..9)

#счетчик x

10.times do |xx|
	meter = rand(0..9)
	if xx < 9 
		print meter
		print "\r"
		sleep 0.08
	else print x
	end
end

puts
#счетчик y

10.times do |yy|
	meter = rand(0..9)
	if yy < 9 
		print meter
		print "\r"
		sleep 0.08
	else print y
	end
end

puts
#счетчик z

10.times do |zz|
	meter = rand(0..9)
	if zz < 9 
		print meter
		print "\r"
		sleep 0.08
	else print z
	end
end

puts

	

	if x == 0 && y == 0 && z == 0
		puts "Ваш баланс обнулен!"
		money = 0	
	end

	if x == 1 && y == 1 && z == 1
		puts "Вам зачислено 10 долларов"
		money = money + 10
	end

		if x == 2 && y == 2 && z == 2
		puts "Вам зачислено 20 долларов"
		money = money + 20
	end

		if x == 3 && y == 3 && z == 3
		puts "Вам зачислено 30 долларов"
		money = money + 30
	end

		if x == 4 && y == 4 && z == 4
		puts "Вам зачислено 40 долларов"
		money = money + 40
	end

		if x == 5 && y == 5 && z == 5
		puts "Вам зачислено 50 долларов"
		money = money + 50
	end

		if x == 6 && y == 6 && z == 6
		puts "Упс! Ваш счет уменьшен на половину"
		money = money / 2
	end

		if x == 7 && y == 7 && z == 7
		puts "Ваш счет уменьшен на 70 долларов"
		money = money - 70
	end

		if x == 8 && y == 8 && z == 8
		puts "Ваш счет уменьшен на 80 долларов"
		money = money - 80
	end

		if x == 9 && y == 9 && z == 9
		puts "Ваш счет уменьшен на 90 долларов"
		money = money - 90
	end

		if x == 1 && y == 2 && z == 3
		puts "Вам зачислено 123 доллара!"
		money = money + 123
	end



		puts "На счету осталось #{money} долларов"

end



