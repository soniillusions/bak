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

ranks_count = []

cards.each do |card|
rank = card[:rank]
ranks_count << rank
end

ranks_count.tally.each do |key, value|
	puts "rank: #{key}, amount: #{value}"
end



