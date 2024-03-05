puts "Вы хотите сыграть?(Y/N): "
answer = gets.strip.capitalize

puts "Вам больше 18 лет?(Y/N): "
age = gets.strip.capitalize

if answer == "Y" && age == "Y"
	puts "Хорошо, сыграем"
else
	puts "Ошибка"
	sleep 2
	exit
end

money = 100
x = 0
y = 0
z = 0

game = 0

puts "Press 'Enter' to start round"

1000.times do
gets

if money <= 0 
	puts "game over!!! not enough coins"
	sleep(3)
	exit
end

money = money - 5

game = game + 1
puts "~~~~~~~~~~#{game} game:"

	10.times do 
	x = rand(0..9)
	print x
	print "\r"
	sleep(0.05)
	end

puts

	10.times do 
	y = rand(0..9)
	print y
	print "\r"
	sleep(0.05)
	end

puts

	10.times do 
	z = rand(0..9)
	print z
	print "\r"
	sleep(0.05)
	end

puts

if x == 0 && y == 0 && z == 0
	money = 0
	print "Баланс обнулен!"
	exit
end

if x == 1 && y == 1 && z == 1
	money = money + 100
	print "Начислено 100 монет"
end

if x == 2 && y == 2 && z == 2
	money = money + 200
	print "Начислено 200 монет"
end

if x == 3 && y == 3 && z == 3
	money = money + 300
	print "Начислено 300 монет"
end

if x == 4 && y == 4 && z == 4
	money = money + 400
	print "Начислено 400 монет"
end

if x == 5 && y == 5 && z == 5
	money = money + 500
	print "Начислено 500 монет"
end

if x == 6 && y == 6 && z == 6
	money = money / 2
	print "Начислено 100 монет"
end

if x == 7 && y == 7 && z == 7
	money = money + 70
	print "Начислено 100 монет"
end

if x == 8 && y == 8 && z == 8
	money = money + 80
	print "Начислено 100 монет"
end

if x == 9 && y == 9 && z == 9
	money = money + 90
	print "Начислено 100 монет"
end

if x == y || x == z || y == z
	money = money + 10
	print "Начислено 10 монет"
end

puts

puts "На счету осталось: #{money}"

puts

sleep(0.3)

end

