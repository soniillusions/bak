cards = [
{ suit: "heart", rank: "8"},
{ suit: "diamond", rank: "2"},
{ suit: "diamond", rank: "ace"},
{ suit: "heart", rank: "king"},
{ suit: "spade", rank: "4"},
{ suit: "club", rank: "king"},
{ suit: "spade", rank: "king"},
{ suit: "heart", rank: "4"}
]

ranks_count = Hash.new(0)

cards.each do |card|
ranks_count[card[:rank]] += 1
end

ranks_count.each do |key, value|
	puts "rank: #{key}, amount: #{value}"
end

