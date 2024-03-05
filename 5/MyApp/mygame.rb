puts "Выберете класс: "

puts "1 - Лучник"

puts "2 - Мечник"

puts "3 - Маг"

answer = gets.to_i

if answer == 1
	puts "Теперь вы лучник"
elsif answer == 2
	puts "Теперь вы мечник"
elsif answer == 3
	puts "Теперь вы маг"
end

money = 10
myhp = 100
hp = 0
sleep(1)

1000.times do |g|

  myhp = myhp + hp
  puts 

  puts "в кармане #{money} монет"

puts "Куда отправимся? "

puts "1 - Пустыня"

puts "2 - Загадочный лес"

puts "3 - Горы"

answer2 = gets.to_i

if answer2 == 1
  km1 = rand(3..17)
	puts "До пустыни #{km1} км, отправляемся в путь.."
	km1.times do |hh|
		print "#{hh + 1} км"
		print "\r"
		sleep(1)
	end
	puts "Ура, вы добрались до пустыни!"
elsif answer2 == 2
  km2 = rand(5..20)
	puts "До загадочного леса #{km2} км, отправляемсч в путь.."
  km2.times do |bn|
    print "#{bn + 1} км"
    print "\r"
    sleep(1)
  end
  puts "Ура, вы добрались до загадочного леса!"
elsif answer2 == 3
  km3 = rand(7..23)
	puts "До гор #{km3} км, отправляемся в путь.."
  km3.times do |dc|
    print "#{dc + 1} км"
    print "\r"
    sleep(1)
  end
  puts "Ура, вы добрались до гор!"
end

if answer2 == 1 
	puts "В пустыне вы встретили.."
	mob = rand(1..1)
	if mob == 1
		puts "Гигантского варана"
	elsif mob == 2
		puts "Кактусового паука"
	elsif mob == 3 
		puts "Торговца"
	end
end

#варан в пустыне
if mob == 1 
  puts "Битва начинается..."
  sleep(2)
    mob1hp = 100
  20.times do |ii|
    damagemy = rand(7..13)
    damagemob1 = rand(7..15)
    myhp = myhp - damagemy
    mob1hp = mob1hp - damagemob1
    sleep(1)
    puts
    puts "Ваше здоровье: #{myhp}"
    sleep(1)
    puts
    puts "Здоровье варана: #{mob1hp}"
    sleep(1)
    if myhp <= 0 
      puts "Вы проиграли"
      sleep(3)
      break
    elsif mob1hp <= 0 
      puts "Вы победили"
      money = money + 10
      puts "+ 10 монет"
      break
    end
  end
end

#кактусовый паук
if mob == 2
  puts "Битва начинается..."
  sleep(2)
    mob2hp = 100
  20.times do |io|
    damagemy = rand(7..13)
    damagemob2 = rand(7..15)
    myhp = myhp - damagemy
    mob2hp = mob2hp - damagemob2
    sleep(1)
    puts "Ваше здоровье: #{myhp}"
    sleep(1)
    puts
    puts "Здоровье паука: #{mob2hp}"
    sleep(1)
    puts
    if myhp <= 0 
      puts "Вы проиграли"
      sleep(3)
      break
    elsif mob2hp <= 0 
      puts "Вы победили"
      money = money + 10
      puts "+ 10 монет"
      break
    end
  end
end
end

if mob == 3
  puts "Что будете покупать?"
  puts "1 - Усиление hp (30 монет)"
  puts "2 - Молитва удачи (25 монет)"
  hp = 10
  luck = 1.2
  ans = gets.to_i
  if ans == 1
    puts "Здоровье увеличино на 10"
    hp = hp + 10
    if money < 10 
      puts "Нехватает монет"
    end
    money = money - 10
  end
end
