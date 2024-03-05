
print "Введите Enter чтобы сыграть..."
gets

print "Сколько раз будем играть? "
amount = gets.to_i

print "Введите ваше любимое число: "
f = gets.to_i

1.upto(amount) do |game|
x = rand(1..50)
sleep(0.4)
puts "Играем #{game} раз (ваше число:#{x})" 
	if x == f
		puts "Вы выиграли!"
	end
end

sleep (120)
