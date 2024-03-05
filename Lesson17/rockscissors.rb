loop do
	print "(R)ock, (S)cissors, (P)aper? (press Enter to exit):  "
	answer = gets.strip.capitalize

	arr = [:rock, :scissors, :paper]
	computer = arr[rand(0..2)]

	if answer == 'R'
		user_choice = arr[0]
	elsif answer == 'S'
		user_choice = arr[1]
	elsif answer == 'P'
		user_choice = arr[2]
	end

	combinations = [
	[:rock, :scissors, :first_win],
	[:rock, :paper, :second_win],
	[:rock, :rock, :draw],

	[:scissors, :rock, :second_win],
	[:scissors, :paper, :first_win],
	[:scissors, :scissors, :draw],

	[:paper, :rock, :first_win],
	[:paper, :scissors, :second_win],
	[:paper, :paper, :draw]
	]

	combinations.each do |item|
		if item[0] == user_choice && item[1] == computer
			if item[2] == :first_win
				puts "You won!"
			elsif item[2] == :second_win
				puts "Computer won!"
			elsif item[2] == :draw
				puts "Draw!"
			end
		end
	end

	puts "You choice: #{user_choice}, computer: #{computer}"

end