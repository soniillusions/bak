class CardGame
	attr_reader :cards, :number

	def initialize
		@score_board = Hash.new(0)
		@cards = [
		{ suit: "chervi", rank: "5"},
		{ suit: "piki", rank: "4"},
		{ suit: "chervi", rank: "king"},
		{ suit: "diamond", rank: "5"},
		{ suit: "diamond", rank: "ace"},
		{ suit: "piki", rank: "10"},
		{ suit: "diamond", rank: "jack"},
		{ suit: "chervi", rank: "2"},
		]

		@price = {
			"2" => 2,
			"3" => 3,
			"4" => 4,
			"5" => 5,
			"6" => 6,
			"7" => 7,
			"8" => 8,
			"9" => 9,
			"10" => 10,
			"jack" => 11,
			"queen" => 12,
			"king" => 13,
			"ace" => 14
		}
	end

	def main
		max = @price[@cards[0][:rank]]
		all_score = 0
		@cards.each_with_index do |card, i|
			score = 1
			cost = @price[card[:rank]]
			#puts cost

			if cost > max 
				score = cost
				max = cost
			end

			if card[:suit] == "diamond" && cost % 2 == 1
				score = cost * 2
			end

			@score_board[card] = score

			all_score += score
		end

		if all_score % 4 == 0
			all_score = all_score / 2
		end

		puts ''
		puts "Общий балл: #{all_score}"
		puts ''

		@score_board.each do |key, value|
			puts "#{key[:suit]} #{key[:rank]} - #{value}"
		end  
	end
end

a = CardGame.new
a.main
