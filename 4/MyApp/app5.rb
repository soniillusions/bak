print "Сколько лет будем откладывать: "
x = gets.to_i

print "Какую сумму будем откладывать в месяц: "
n = gets.to_f

s = 0

1.upto(x)  do |y|
 1.upto(12) do |mm| 
 s = s + n
 puts "Год #{y} месяц #{mm}, отложено: #{s}"
 end
end

