class Game
  attr_reader :win_combinations
  attr_accessor :pole

  def initialize
    @pole = [ '| |', '| |', '| |', '| |',
    '| |', '| |', '| |', '| |', '| |' ]
    @win_combinations = [
    [0, 1, 2], 
    [3, 4, 5], 
    [6, 7, 8], 
    [0, 3, 6], 
    [1, 4, 7],
    [2, 5, 8], 
    [0, 4, 8],
    [2, 4, 6]
  ]  
  end

  def field
    puts "#{@pole[0]} #{@pole[1]} #{@pole[2]}"
    puts '---+---+---'
    puts "#{@pole[3]} #{@pole[4]} #{@pole[5]}"
    puts '---+---+---'
    puts "#{@pole[6]} #{@pole[7]} #{@pole[8]}"
  end

  def player symbol, gamer, order
    loop do
      print "#{order} player enter your move: "
      @move = gets.to_i - 1

      if @pole[@move] == '|X|' || @pole[@move] == '|O|'
        puts 'Error! Try another number.'
      else
        break
      end
    end

    gamer << @move

    @pole[@move] = symbol
  end

  def win_check combination, order
    @win_combinations.each do |check|
      if check.all? {|element| combination.include?(element)}
        puts "#{order} player wins!"
        sleep(3)
        exit
      end
      if !@pole.include?('| |')
        puts "Draw!"
        sleep(3)
        exit
      end
    end
  end

end

@order1 = 'First'
@order2 = 'Second'
@sym1 = '|X|'
@sym2 = '|O|'

@first_player_arr = []
@second_player_arr = []

newgame = Game.new
newgame.field

loop do
  newgame.player @sym1, @first_player_arr, @order1
  newgame.field
  newgame.win_check @first_player_arr, @order1

  newgame.player @sym2, @second_player_arr, @order2
  newgame.field
  newgame.win_check @second_player_arr, @order2
end