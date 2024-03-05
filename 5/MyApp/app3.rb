print "Сколько гостей к вам придёт? "
n = gets.to_i

if n <= -100
 puts "Это, наверное, какая-то шутка!"
 exit
end

if n < 0
 puts "Ошибка"
 sleep (10)
exit
end

if n!=0
 puts "Отлично кто-то будет!"
  else puts "Никого:("
end

if n == 1
 puts "Придет один"
end

if n == 2 
 puts "Придут двое"
end

if n >= 4
 puts "Будет много гостей"
end
sleep (10)
