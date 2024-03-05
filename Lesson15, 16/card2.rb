class Card
	attr_reader :cards, :values
	attr_accessor :ranks_count

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

		@ranks_count = Hash.new(0)

		@values = {
			'ace' => 1, 
			'2' => 2, 
			'3' => 3 ,
			'4' => 4, 
			'5' => 5, 
			'6' => 6, 
			'7' => 7, 
			'8' => 8, 
			'9' => 9, 
			'10' => 10, 
			'jack' => 10, 
			'queen' => 10, 
			'king' => 10
		}
	end

	def ranks_array
		@cards.each do |card|
			@ranks_count[card[:rank]] += 1
		end
	end

	def ranks_total
		@ranks_count.each do |key, value|
			puts "rank: #{key}, amount: #{value}"
		end
	end

	def total_value
		@x = 0
		@ranks_count.each do |key, value|
			@values.each do |card, sum|
				if key == card 
				@x += value * sum
				end
			end
		end
		puts "Total: #{@x}"
	end

	def beat_dealer(number)
		if number < @x	
			return true
		else
			return false
		end
	end
end

a = Card.new

a.ranks_array

a.ranks_total

a.total_value

puts a.beat_dealer(54)
