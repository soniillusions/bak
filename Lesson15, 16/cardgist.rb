# Card Ranks: ace, 2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king
# Card Suits: heart, diamond, spade, club

cards = [
  { suit: "heart", rank: "8" },
  { suit: "diamond", rank: "2" },
  { suit: "diamond", rank: "ace" },
  { suit: "heart", rank: "king" },
  { suit: "spade", rank: "4" },
  { suit: "club", rank: "king" },
  { suit: "spade", rank: "king" },
  { suit: "heart", rank: "4" }
] 

# Find the frequency of the ranks in youe cards.
# Определить частоту по rank'y. Для массива выше вот такой должен быть вывод:
#
# 8 - 1
# 2 - 1
# ace - 1
# king - 3
# 4 - 2
#

hh = {}

cards.each do |card|
  card.each do |key, value|
    hh << value
  end
end
