puts "За кого будете играть? 1 - Маг, 2 - Лучник, 3 - Мечник"
classs = gets.strip

puts "Куда отправитесь?: "
way = gets.strip

hp = 0
damage = 0
money = 0


if classs == 1
hp = 70
damage = 15
elsif classs == 2
	hp = 85
	damage = 13
elsif classs == 3
	hp = 100
	damage = 10
end

puts hp
puts damage

def game_way

end



