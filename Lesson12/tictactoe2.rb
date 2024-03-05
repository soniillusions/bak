def field
  puts "#{@pole[0]} #{@pole[1]} #{@pole[2]}"
  puts '---+---+---'
  puts "#{@pole[3]} #{@pole[4]} #{@pole[5]}"
  puts '---+---+---'
  puts "#{@pole[6]} #{@pole[7]} #{@pole[8]}"
end

@pole = [ '| |', '| |', '| |', '| |',
  '| |', '| |', '| |', '| |', '| |' ]

win = [[1,2,3], [4,5,6], [7,8,9], 
[1,4,7], [2,5,8], [3,6,9], [3,2,1], [6,5,4], [9,8,7], [7,4,1], [8,5,2], [9,6,3], [1,5,9], [9,5,1], [3,5,7], [7,5,3]]


player1_win = []
player1_array = []
player2_win = []
player2_array = []

field

loop do
  print "First player move (1-9): "
  player1 = gets.to_i
  @pole[player1 - 1] = '|X|'
  player1_array << player1
  player1_array.each_with_index do |value, index|
    if index % 3 == 0
      player1_win.push([value])
    else
      player1_win.last.push(value)
    end
  end

    
  field

  if player1_win.include?(win[0..-1])   
     puts "First player won!"
    break
  end
    
  print "Second player move (1-9): "
  player2 = gets.to_i
  @pole[player2 - 1] = '|O|'
  player2_win << player2

  field

end