def field
  puts "#{@pole[0]} #{@pole[1]} #{@pole[2]}"
  puts '---+---+---'
  puts "#{@pole[3]} #{@pole[4]} #{@pole[5]}"
  puts '---+---+---'
  puts "#{@pole[6]} #{@pole[7]} #{@pole[8]}"
end

def player move, gamer, order
  loop do
    puts "============================"
    print "#{order} player enter your move (1-9): " 
    round = gets.to_i
    if gamer == @gamer1_symbol
      @check_move = @second_player_move
    else
      @check_move = @first_player_move
    end
    if (@check_move.include?(round - 1) || move.include?(round - 1) || (round > 9) || (round < 1))
      puts "Invalid move, try another number"
      else
      move << round - 1
      @pole[round - 1] = "#{gamer}"
    break
    end
  end
end

def win_check combination, order
  @win_combinations.any? do |comb|
    if comb.all? { |element| combination.include?(element)}
      puts "#{order} player wins!"
    exit
    end
    if !@pole.include?('| |')
      puts "Draw!"
      exit
    end
  end
end

order1 = "First"
order2 = "Second"

@gamer1_symbol = '|X|'
@gamer2_symbol = '|O|'

@check_move = []
@first_player_move = []
@second_player_move = []

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

#GAME START
field

loop do

#ход первого игрока
player @first_player_move, @gamer1_symbol, order1
puts @first_player_move.inspect

field

win_check @first_player_move, order1

#puts first_player_move.inspect

#ход второго игрока
player @second_player_move, @gamer2_symbol, order2
puts @second_player_move.inspect

field

win_check @second_player_move, order2

#puts second_player_move.inspect

end


