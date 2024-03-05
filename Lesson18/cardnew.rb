class CardGame
	attr_reader :cards, :price

	def initialize
		@cards = [
			{suit: "heart", rank: "ace"},
			{suit: "heart", rank:  "2"},
			{suit: "heart", rank:  "10"},
			{suit: "heart", rank:  "10"}
		]

		@hh = {}

		@price = {
			"2" => 2,
			"20" => 10,
			"ace" => 14
		}
	end

	def main
		max = @price[@cards[0][:rank]]
		all_score = 0

		@cards.each_with_index do |card, i|
			ball = 1
			score = @price[card[:rank]]

			if score > max
				ball = score
				max = score
			end

			@hh[card] = score
			all_score += score
		end
	end
end

a = CardGame.new

a.main