class CardGame
	attr_reader :cards, :number

	def initialize
		@score_board = Hash.new(0)
		@cards = [
		{ suit: "cresti", rank: "8"},
		{ suit: "chervi", rank: "jack"},
		{ suit: "diamond", rank: "7"},
		{ suit: "chervi", rank: "8"},
		{ suit: "diamond", rank: "6"}
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

		puts "Общий балл: #{all_score}"

		@score_board.each do |key, value|
			puts "#{key} - #{value}"
		end  
	end
end

a = CardGame.new
a.main