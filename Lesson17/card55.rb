class CardGame
	attr_reader :cards

	def initialize
		@cards = [
		{ suit: "heart", rank: "8"},
		{ suit: "diamond", rank: "2"},
		{ suit: "diamond", rank: "ace"},
		{ suit: "heart", rank: "king"},
		{ suit: "spade", rank: "4"},
		{ suit: "club", rank: "king"},
		{ suit: "spade", rank: "king"},
		{ suit: "heart", rank: "4"}
		]

		@ranks_map = Hash.new(0)
		@ball = 0

		@price = {
			"ace" => 1,
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
			"king" => 13
		}

		@ranks_array = []

		@values_card = Hash.new(0)
	end

	def ranks_count
		@cards.each do |card|
		@ranks_map[card[:rank]] += 1
		end
	end

	def ranks_output
		@ranks_map.each do |key, value|
			puts "rank: #{key}, amount: #{value}"
		end
	end

	def each_card
		@cards.each do |card|
			x = card[:rank]
				if card[:rank] == "ace"
					x = "1"
				elsif card[:rank] == "jack"
					x = "11"
				elsif card[:rank] == "queen"
					x = "12"
				elsif card[:rank] == "king"
					x = "12"
				end
			@ranks_array << x
			@ball += 1
		end
	end

	def card_define
		@ranks_array.each do |rank|
			@values_card.push(rank)
		end
		puts @values_card
	end		
end

a = CardGame.new

a.ranks_count

a.ranks_output

a.each_card

a.card_define