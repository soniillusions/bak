obj = {
	soccer_ball: 410,
	tennis_ball: 58,
	golf_ball: 45
}

obj[:soccer_ball] = obj[:soccer_ball] / 6
obj[:tennis_ball] = obj[:tennis_ball] / 6
obj[:golf_ball] = obj[:golf_ball] / 6

total_balls = []

obj.each do |key, value|
print "How many #{key} you want to buy: "
balls = gets.to_i
total = balls * value
total_balls << total.to_f
end

x = total_balls[0] + total_balls[1] + total_balls[2]

puts "Total weight of you cart on the moon: #{x} grams or #{x / 1000} kg"
puts "Total weight of you cart on the earth: #{x * 6} grams or #{(x * 6) / 1000} kg"