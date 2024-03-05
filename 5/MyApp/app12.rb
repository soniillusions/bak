print "Какую сумму будем откладывать в месяц?"
sum = gets.to_f

print "Сколько лет будем откладывать?"
year = gets.to_i

s = 0

1.upto(year) do |yy|
	1.upto(12) do |mm|
		s = s + sum
		puts "Накопления за #{yy} год, #{mm} месяц: #{s}"
	end
end

