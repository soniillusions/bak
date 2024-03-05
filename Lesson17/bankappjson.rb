client_name = 'Герман Оскарович Блокчейн'
balance = 123.45

transactions = {
	сапоги: {тип: 'расход', сумма: 40},
	зарплата: {тип: 'приход', сумма: 1000},
	продажа_ваучера: {тип: 'приход', сумма: 300},
	велосипед: {тип: 'расход', сумма: 200},
	протез_для_ноги_бабушке: {тип: 'расход', сумма: 300}
}

visibility = {show_refil: :notshowrefil}

transactions.each do |key, value|
	if value[:тип] == 'расход'
		balance -= value[:сумма]
	else
		balance += value[:сумма]
	end
	if visibility[:show_refil] == :notshowrefil
		if value[:тип] == 'расход'
			puts "товар: #{key}, действие: #{value[:тип]}, сумма: $#{value[:сумма]}"
		end
	elsif visibility[:show_refil] == show_refil
		puts "товар: #{key}, действие: #{value[:тип]}, сумма: $#{value[:сумма]}"
	end
end

puts "На балансе осталось: $#{balance}"	