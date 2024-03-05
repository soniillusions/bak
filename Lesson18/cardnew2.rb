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
      score = @price[card[:rank]]

      if score > max
        max = score
      end

      @hh[card] = score
      all_score += score
    end

    all_score # Возвращаем общее количество очков
  end
end

a = CardGame.new
total_score = a.main
puts "Общее количество очков: #{total_score}"
