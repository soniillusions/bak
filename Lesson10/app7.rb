
loop do

print "(R)ock, (S)cissors, (P)aper? "
s = gets.strip.capitalize

if s == "R"
	user_choice = :rock
elsif s == "S"
	user_choice = :scissors
elsif s == "P"
	user_choice = :paper
else
	puts "Can't understand what you want, sorry..."
	exit
end

arr = [:rock, :scissors, :paper]

computer_choice = arr[rand(0..2)]

puts "User choice: #{user_choice}"
puts "Computer choice: #{computer_choice}"

matrix = [
	#ничья
	[:rock, :rock, :draw],
	[:scissors, :scissors, :draw],
	[:paper, :paper, :draw],

	#камень
	[:rock, :paper, :second_win],
	[:rock, :scissors, :first_win],	

	#ножницы
	[:scissors, :paper, :first_win],
	[:scissors, :rock, :second_win],

	#бумага
	[:paper, :rock, :first_win],
	[:paper, :scissors, :second_win],
]

matrix.each do |item|
	if item[0] == user_choice && item[1] == computer_choice

if item[2] == :first_win
	puts "User wins!"
elsif item[2] == :second_win
	puts "Computer wins!"
elsif item[2] == :draw
	puts "Draw!"
end
	end
end

end