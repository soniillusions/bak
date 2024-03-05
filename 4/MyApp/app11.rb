print "Сколько месяцев будем откладывать?: "
month = gets.to_i

print "Какую сумму будем откладывать?: "
sum = gets.to_f

s = 0

year = month/12
year.to_i

1.upto(year)
