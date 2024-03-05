print "Enter A: "
A = gets.to_f

print "Enter B: "
B = gets.to_f

print "What we gonna do? (+-*/) "
operator = gets.strip

if operator == "/" && B == 0
	puts "На ноль делить нельзя"
	sleep(5)
	exit
end

if operator == "+"
	puts "#{A} + #{B} = #{A + B}"

elsif operator == "-"
	puts "#{A} - #{B} = #{A - B}"

elsif operator == "*"
	puts "#{A} * #{B} = #{A * B}"

elsif operator == "/"
	puts "#{A} / #{B} = #{A / B}"
else
	puts "Ошибка, проверьте значение"
end
	
