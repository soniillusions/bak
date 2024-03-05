cart = [
{type: :soccer_ball, qty: 2},
{type: :tennis_ball, qty: 3}
]

inventory = {
soccer_ball: { available: 2, price_per_item: 100 },
tennis_ball: { available: 1, price_per_item: 30 },
golf_ball: { available: 5, price_per_item: 5 }
}

=begin
Написать программу, которая выводит на экран цену всех товаров в корзине
(total), а также сообщает, возможно ли удовлетворить запрос пользователя —
набрать все единицы товара, которые есть на складе.
=end

total = 0

cart.each do |item|
	x = inventory[item[:type]]
	total += x[:price_per_item] * item[:qty]
	if x[:available] < item[:qty]
		puts "На складе недостаточно: #{item[:type]}"
	else
		puts "Товара хватает: #{item[:type]}"
	end
end

puts "Цена всех товаров в корзине: #{total}"


